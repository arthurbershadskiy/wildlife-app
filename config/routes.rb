Rails.application.routes.draw do
  resources :regions

  root 'species#index'
  match 'species/new', { via: :get, to: 'species#new'}
  match '/species', { via: :post, to: 'species#add'}
  match '/species', { via: :get, to: "species#index"}
  match '/species/:specie_id', { via: :get, to: 'species#show' }
  match '/species/:specie_id/edit', { via: :get, to: 'species#edit'}
  match '/species/:specie_id', { via: [:put, :patch], to: 'species#update'}
  match '/species/:specie_id/delete', { via: :get, to: 'species#destroy'}
  match '/species/:specie_id/sightings/new', { via: :get, to: 'sightings#new' }
  match '/species/:specie_id/sightings/new', { via: :post, to: 'sightings#create' }
  match '/species/:specie_id/sightings/:sighting_id/edit', { via: :get, to: 'sightings#edit'}
  match '/species/:specie_id/sightings/:sighting_id/', { via: [:put, :patch], to: 'sightings#update'}
  match '/species/:specie_id/sightings/:sighting_id/delete', { via: :get, to: 'sightings#delete'}
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
