Rails.application.routes.draw do
  devise_for :users
  root 'post_pdf#index'
  resources :post_pdf, only: :index
end
