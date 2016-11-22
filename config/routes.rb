Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'}

  root 'home#index'
  get '/contact', to: 'home#contact', as: 'contact'
end
