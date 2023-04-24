Rails.application.routes.draw do
  get 'wines/index'
  get 'wines/new'
  get 'wines/edit'
  get 'wines/show'
  get 'dishes/index'
  get 'dishes/new'
  get 'dishes/edit'
  get 'dishes/show'
  get 'cuts/index'
  get 'cuts/new'
  get 'cuts/edit'
  get 'cuts/show'
  root :to => 'cuts#index'
  resources :cuts
  resources :dishes
end
