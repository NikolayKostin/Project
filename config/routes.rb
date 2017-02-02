Rails.application.routes.draw do
  root                           'main#index'
  get 'help'                  => 'main#help'
  get 'signup'                => 'users#new'
  get 'login'                 => 'sessions#new'
  post 'login'                => 'sessions#create'
  delete 'logout'             => 'sessions#destroy'
  #get 'competitions'          => 'competitions#index'
  g#et '/competitions/(:id)'   => 'competitions#select_photos'
  #get '/info/(:id)'           => 'competitions#show_info'
  #get '/results/(:id)'        => 'competitions#results'

  resources :users
  resources :themes #обеспечивает автоматический вызов всех методов REST
  resources :images
  resources :values

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end