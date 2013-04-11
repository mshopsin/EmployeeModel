EmployeeDB::Application.routes.draw do
  resources :employees, :only => [ :index, :new, :create ]
  resources :employee_profiles, :only => [ :new, :create ]
  resources :teams, :only => [ :index, :new, :create, :show ]
  # get "employee_profiles/index"
  # 
  # get "employee_profiles/new"
  # 
  # get "employee_profiles/create"
  # 
  # get "employee_profiles/show"
  # 
  # get "employee_profiles/delete"
  # 
  # get "employee_profiles/destroy"
  # 
  # get "team_memberships/index"
  # 
  # get "team_memberships/new"
  # 
  # get "team_memberships/create"
  # 
  # get "team_memberships/show"
  # 
  # get "team_memberships/delete"
  # 
  # get "team_memberships/destroy"
  # 
  # get "teams/index"
  # 
  # get "teams/new"
  # 
  # get "teams/create"
  # 
  # get "teams/show"
  # 
  # get "teams/delete"
  # 
  # get "teams/destroy"
  # 
  # get "employees/index"
  # 
  # get "employees/new"
  # 
  # get "employees/create"
  # 
  # get "employees/show"
  # 
  # get "employees/delete"
  # 
  # get "employees/destroy"

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
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
