Rails.application.routes.draw do
	# global options responder -> makes sure OPTION request for CORS endpoints work
  # match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
  resources :cors
	root to: 'welcome#index'
	# get '/*path', to: 'welcome#index', format: false
	# root 'welcome#index'
	# get '/*path', to: 'welcome#index' 
  # match '*path', to: redirect('/'), via: :all

	post 'refresh', controller: :refresh, action: :create
	post 'signin', controller: :signin, action: :create
	post 'signup', controller: :signup, action: :create
	delete 'signin', controller: :signin, action: :destroy
  post 'mesa', controller: :meshandl, action: :mesa 
  resources :todos
  get 'me', controller: :users, action: :me
  # resource :redactors
  # resources :password_resets, only: [:create] do
  #   collection do
  #     get ':token', action: :edit, as: :edit
  #     patch ':token', action: :update
  #   end
  # end
  # resources :users
  #   namespace :admin do
  #     resources :users, only: [:index, :show, :update] 

  #   end
  # end
  # get 'admin/users', to: 'admin/users#allus' 
  # get 'admin/users', to: 'welcome#index', action: :allus, controller: 'admin/users'
  get 'admin/users', to: 'admin/users#allus' 
  get 'admin/use', to: 'welcome#index' 

  get 'admin/red', to: 'welcome#index' 
  get 'admin/redactors', to: 'admin/redactors#index' 



  post 'arevitem', to: "reviews#aitem"
  delete 'delrevitem/:id', to: "reviews#delitem" 
  post 'saverevitem', to: "reviews#saverevitem"
  post '/getrev', to: 'reviews#getrev' 
  get '/rev', to: 'welcome#index' 
  get '/reviews', to: 'reviews#index' 



  get '/prices', to: 'prices#index' 
  get '/pricel', to: 'welcome#index' 
  delete 'delitem/:id', to: "prices#delitem"
  post 'aitem', to: "prices#aitem"
  post 'getitem', to: "prices#getitem"
  post 'saveitem', to: "prices#saveitem"

  get '/contacts', to: 'contacts#index' 
  get '/cont', to: 'welcome#index'  
  post '/getcont', to: 'contacts#getcont' 
  post 'savecontitem', to: "contacts#savecontitem" 
  # get 'admin/users', controller: 'admin/users', action: :allus
  # get 'admin/users', to: 'admin/users#allus' 
  # get '/404', to: 'welcome#index'
  # get '/404', to: 'errors#not_found'
  # get '/500', to: 'errors#internal_server_error'
  # get '/401', to: 'errors#not_authorized' 
  # get '/401', to: 'welcome#index'

  # get '/404', to: 'welcome#index', as: :not_found
  get '/404', to: "errors#not_found" 
  # get '/500', to: "errors#internal_server_error" 
  # match "/404", :to => "errors#not_found", :via => :all 
  get '/500', to: 'welcome#index', as: :internal_server_error
  # match "/500", :to => "errors#internal_server_error", :via => :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
