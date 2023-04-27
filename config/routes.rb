Rails.application.routes.draw do
  root :to => 'cuts#index'
  resources :cuts
  resources :dishes
  resources :wines
end
