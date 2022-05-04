Rails.application.routes.draw do
  devise_for :users
  root 'post_pdf#index'
  resources :post_pdf, only: :index
  resources :customers, only: [:index,:new,:create,:edit,:update,:destroy]

end
