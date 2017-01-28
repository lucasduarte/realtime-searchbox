Rails.application.routes.draw do
  get 'home/index'

  get 'auto_search' => 'searches#auto_search'
  post 'search' => 'user_searches#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
