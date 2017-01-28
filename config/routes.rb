Rails.application.routes.draw do
  root 'home#index'

  post 'destroy_all' => 'home#destroy_all'

  get 'auto_search' => 'searches#auto_search'
  get 'search' => 'user_searches#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
