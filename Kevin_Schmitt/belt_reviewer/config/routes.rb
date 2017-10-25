Rails.application.routes.draw do
  get 'events/show'

  root 'users#new'


  get 'users/new' => 'users#new'

  get 'events' => 'events#show', as: 'events'

  post 'events' => 'events#create', as: 'create_event'

  delete 'events/:id' => 'events#destroy', as: 'destroy_event'

  get 'events/:id' => 'events#showone', as: 'showone'

  post 'attend/:id' => 'attends#create', as: 'attend'

  delete 'leave/:id' => 'attends#leave', as: 'leave'

  post 'message/:id' => 'messages#create', as:'message'







  # #New Login
  # get 'login'        => 'sessions#new',     as: 'new_login'
  # get 'sessions/new' => 'sessions#new'
  post 'login'       => 'sessions#create',  as: 'login'
  post 'sessions'    => 'sessions#create'
  #create user
  post 'register'    => 'users#create',     as: 'register'
  post 'users'       => 'users#create'
  #Logout
  delete 'logout'    => 'sessions#destroy', as: 'logout'
  delete 'sessions'  => 'sessions#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end