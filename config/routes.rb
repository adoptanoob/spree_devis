Spree::Core::Engine.routes.draw do
  get 'devis/index'

  get 'devis/new'

  get 'devis/show'

  get 'devis/create'

  get 'devis/edit'

  get 'devis/update'

  get 'devis/detroy'

  resources :devis
end
