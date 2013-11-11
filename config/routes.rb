Lottery::Application.routes.draw do
  
  resources :orders

  resources :consumers

  resources :tickets

  resources :bussinesses

  resources :rewards
  
  resources :activities do
    resources :rewards
    resources :tickets
  end


  devise_for :users, :controllers => { :sessions => "sessions" }


  get '/consumer/login', to: 'consumer/sessions#create'
  get '/consumer/logout', to: 'consumer/sessions#destroy'
  get '/consumer/buy', to: 'consumer/orders#create'
  get '/consumer/exchange', to: 'consumer/tickets#exchange'
  get '/consumer/activities', to: 'consumer/activities#index'
  get '/consumer/change_profile', to: 'consumer/consumers#update'
  get '/consumer/lottery', to: 'consumer/tickets#lottery'
  get '/consumer/tickets', to: 'consumer/tickets#index'
  get '/consumer/buy_lottery', to: 'consumer/consumers#buy_lottery_count'
  get '/consumer/lottery_count', to: 'consumer/consumers#lottery_count'


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

  root :to => "welcome#index"
  
end
