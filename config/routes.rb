Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :restaurants
      end
    end
  end
  
  @version = 'api/v1/'

  scope 'api/v1' do
    get 'restaurant',         to: @version+'restaurants#index'
    post 'restaurant',        to: @version+'restaurants#create'
    get 'restaurant/:id',     to: @version+'restaurants#show'
    put 'restaurant/:id',     to: @version+'restaurants#update'
    delete 'restaurant/:id',  to: @version+'restaurants#destroy'
  end
end
