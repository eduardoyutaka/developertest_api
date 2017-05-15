Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'restaurant',         to: 'restaurants#index'
  post 'restaurant',        to: 'restaurants#create'
  get 'restaurant/:id',     to: 'restaurants#show'
  put 'restaurant/:id',     to: 'restaurants#update'
  delete 'restaurant/:id',  to: 'restaurants#destroy'
end
