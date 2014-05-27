ProyectoPitagoras::Application.routes.draw do


  get "profesorlogout/index"
  get "estudiantelogout/index"
  get "datosubscripcion/index"
  get "subscripcion/index"
  get "recibir_mensaje/index"
  get "notaparticularprofesor/index"
  get "minotaestudiante/index"
  get "listosubirarchivoprofesor/index"
  get "cargarnotasprofesor/index"
  get "estudiantenotas/index"
  get "cargararchivo/index"
  post "cargararchivo/index"
  get "profesorlogueado/index"
  get "estudiantelogueado/index"
  get "estudiantelogin/index"
  get "profesorlogin/index"
  get "cargararchivo/subir_archivo"

  post "cargararchivo/subir_archivo",to: "cargararchivo#subir_archivo"
  #get "inicio/index"
  match "estudiantelogout/index" ,to: "estudiantelogout#index" , via:[:get ,:post]
  match "profesorlogout/index" ,to: "profesorlogout#index" , via:[:get ,:post]
  match "datosubscripcion/index" ,to: "datosubscripcion#index", via:[:get,:post]
  match "subscripcion/index" , to: "subscripcion#index" , via:[:get ,:post]
  match "recibir_mensaje/index" , to: "recibir_mensaje#index" , via:[:get ,:post]
  match "notaparticularprofesor/index", to:"notaparticularprofesor#index", via:[:get,:post]
  match "minotaestudiante/index" ,to: "minotaestudiante#index", via: [:get ,:post]
  match "estudiantenotas/index", to: "estudiantenotas#index" ,via:[:get ,:post]
  match "listosubirarchivoprofesor/index" ,to: "listosubirarchivoprofesor#index" , via:[:get,:post]
  match 'cargararchivo/index' ,to: 'cargararchivo#subir_index', via:[:get,:post]
  match 'cargararchivo/index',to: 'cargararchivo#index' ,via:[:get,:post]
  match 'cargarnotasprofesor/index' , to: 'cargarnotasprofesor#index', via:[:get,:post]
  match 'profesorlogueado/index', to: 'profesorlogueado#index', via: [:get,:post]
  match 'estudiantelogueado/index', to: 'estudiantelogueado#index', via:[:get,:post]
  match 'estudiantelogin/index', to: 'estudiantelogin#index', via: [:get ,:post]
  match 'profesorlogin/index', to: 'profesorlogin#index', via: [:get ,:post]

  
  root to:'inicio#index' 

  #match 'inicio/index', to: 'estudiantelogin#index', via: [:get,:post] 
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
