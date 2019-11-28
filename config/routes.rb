Rails.application.routes.draw do
  resources :ingredients
  resources :meal_ingredients
  resources :meals
  devise_for :users

  devise_scope :user do
    get '/sign_in', to: 'devise/sessions#new'
    get '/sign_out', to: 'devise/sessions#destroy'
  end

  root 'index#home'
  get 'index/contact', to: 'index#contact'
  post 'request_contact', to: 'index#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
