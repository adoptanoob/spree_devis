Spree::Core::Engine.routes.draw do
  resources :devis
  root to: 'devis#index'
end
