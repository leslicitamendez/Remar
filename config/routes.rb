Rails.application.routes.draw do



  resources :units

  resources :cities

  resources :stocks


  resources :ventaprods

  resources :rendicionprods

  resources :entregaprods

  resources :rehabs

  resources :egreso_produccions

  resources :egreso_internos

  resources :court_orders

  resources :contacts

  resources :ingresos

  resources :venta

  resources :entrega_productos

  resources :rendicion_productos

  resources :conducta

  resources :hijos

  resources :voluntarios

  resources :conyugues

  resources :internos

  resources :produccions

  resources :historia_clinicas

  resources :egresos

  resources :avaluo_donativos

  resources :recepcion_donativos

  resources :cita

  resources :gasto_internos

  resources :products

  get '/egresos/buscar_reporte' => 'egresos#buscar_reporte', :as => 'buscar_reporte'
  get '/egresos/buscar_entre_fechas' => 'egresos#buscar_entre_fechas', :as => 'buscar_entre_fechas'

  get '/historia_clinicas/new/:id' => 'historia_clinicas#new', :as => 'historia'
  get '/egreso_internos/new/:id' => 'egreso_internos#new', :as => 'egreso_inter'

  get '/conyugues/new/:id' => 'conyugues#new', :as => 'pareja'

   get '/contacts/new/:id' => 'contacts#new', :as => 'contacto'

  get '/hijos/new/:id' => 'hijos#new', :as => 'fis'

  get '/conductas/new/:id' => 'conducta#new', :as => 'memo'

  get '/court_orders/new/:id' => 'court_orders#new', :as => 'orden'

  get '/referencias/new/:id' => 'referencias#new', :as => 'respalda'

  get '/rehabs/new/:id' => 'rehabs#new', :as => 'rehaba'

  get '/entrega_productos/new/:id' => 'entrega_productos#new', :as => 'entrega'
  get '/products/search' => 'products#search'


  get '/rendicion_productos/new/:id' => 'rendicion_productos#new', :as => 'rendicion'

  get '/rendicionprods/new/:id' => 'rendicionprods#new', :as => 'rend'

  get '/ventaprods/new/:id' => 'ventaprods#new', :as => 'vent'

  get '/ingresos/new/:id/:donaid' => 'ingresos#new', :as => 'ingre'  

  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'
    get 'welcome/index'

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
