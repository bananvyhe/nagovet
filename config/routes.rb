Rails.application.routes.draw do
	# global options responder -> makes sure OPTION request for CORS endpoints work
  match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
  resources :cors
	root to: 'welcome#index'
	# get '/*path', to: 'welcome#index', format: false
	# root 'welcome#index'
	get '/*path', to: 'welcome#index' 
	post 'refresh', controller: :refresh, action: :create
	post 'signin', controller: :signin, action: :create
	post 'signup', controller: :signup, action: :create
	delete 'signin', controller: :signin, action: :destroy
  post 'meshandl', controller: :meshandl, action: :mes 
  resources :todos
  
  # resources :password_resets, only: [:create] do
  #   collection do
  #     get ':token', action: :edit, as: :edit
  #     patch ':token', action: :update
  #   end
  # end

  # namespace :admin do
  #   resources :users, only: [:index, :show, :update] do
  #     resources :todos, only: [:index], controller: 'users/todos'
  #   end
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
