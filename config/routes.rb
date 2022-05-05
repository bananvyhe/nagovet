Rails.application.routes.draw do
	# root to: 'welcome#index'
	root 'welcome#index'
	get '/*path', to: 'welcome#index' 
	post 'refresh', controller: :refresh, action: :create
	post 'signin', controller: :signin, action: :create
	post 'signup', controller: :signup, action: :create
	delete 'signin', controller: :signin, action: :destroy

  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
