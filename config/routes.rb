Rails.application.routes.draw do
  root 'index#home'
  get 'index/contact', to: 'index#contact'
  post 'request_contact', to: 'index#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
