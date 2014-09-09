Rails.application.routes.draw do
  devise_for :users
  root 'servants#index'
  resources :servants
end
