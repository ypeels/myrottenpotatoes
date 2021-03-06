Myrottenpotatoes::Application.routes.draw do

  # Section 5.6 Figure 5.8 (bottom)
  # http://pastebin.com/tCHwFER8
  # add to routes.rb, just before or just after 'resources :movies' :
  # Route that posts 'Search TMDb' form
  post '/movies/search_tmdb'

  # Section 4.1
  # http://pastebin.com/piLDY4eM
  resources :movies do

    # Section 7.5 beginning
    # http://pastebin.com/cmB747Ta
    resources :reviews  # owned by :movies

  end
  root :to => redirect('/movies')

  # Section 7.2 Figure 7.10(a)
  # http://pastebin.com/pBuULmVY
  match 'auth/:provider/callback' => 'sessions#create',:as => 'login'
  match 'logout' => 'sessions#destroy'

  
  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/productshttp://pastebin.com/tCHwFER8_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
