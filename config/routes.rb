Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :users, except: :index
  resources :reports

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  get '/links' => 'welcome#links'

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  #List of states for custom routes

  get '/alabama' => 'reports#alabama'
  get '/alaska' => 'reports#alaska'
  get '/arizona' => 'reports#arizona'
  get '/arkansas' => 'reports#arkansas'
  get '/california' => 'reports#california'
  get '/colorado' => 'reports#colorado'
  get '/connecticut' => 'reports#connecticut'
  get '/dc' => 'reports#dc'
  get '/delaware' => 'reports#delaware'
  get '/florida' => 'reports#florida'
  get '/georgia' => 'reports#georgia'
  get '/hawaii' => 'reports#hawaii'
  get '/idaho' => 'reports#idaho'
  get '/illinois' => 'reports#illinois'
  get '/indiana' => 'reports#indiana'
  get '/iowa' => 'reports#iowa'
  get '/kansas' => 'reports#kansas'
  get '/kentucky' => 'reports#kentucky'
  get '/louisiana' => 'reports#louisiana'
  get '/maine' => 'reports#maine'
  get '/maryland' => 'reports#maryland'
  get '/massachusetts' => 'reports#massachusetts'
  get '/michigan' => 'reports#michigan'
  get '/minnesota' => 'reports#minnesota'
  get '/mississippi' => 'reports#mississippi'
  get '/missouri' => 'reports#missouri'
  get '/montana' => 'reports#montana'
  get '/nebraska' => 'reports#nebraska'
  get '/nevada' => 'reports#nevada'
  get '/new_hampshire' => 'reports#new_hampshire'
  get '/new_jersey' => 'reports#new_jersey'
  get '/new_mexico' => 'reports#new_mexico'
  get '/new_york' => 'reports#new_york'
  get '/north_carolina' => 'reports#north_carolina'
  get '/north_dakota' => 'reports#north_dakota'
  get '/ohio' => 'reports#ohio'
  get '/oklahoma' => 'reports#oklahoma'
  get '/oregon' => 'reports#oregon'
  get '/pennsylvania' => 'reports#pennsylvania'
  get '/rhode_island' => 'reports#rhode_island'
  get '/south_carolina' => 'reports#south_carolina'
  get '/south_dakota' => 'reports#south_dakota'
  get '/tennessee' => 'reports#tennessee'
  get '/texas' => 'reports#texas'
  get '/utah' => 'reports#utah'
  get '/vermont' => 'reports#vermont'
  get '/virginia' => 'reports#virginia'
  get '/washington' => 'reports#washington'
  get '/west_virginia' => 'reports#west_virginia'
  get '/wisconsin' => 'reports#wisconsin'
  get '/wyoming' => 'reports#wyoming'

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
