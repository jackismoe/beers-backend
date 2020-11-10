Rails.application.routes.draw do
  resources :users, only: [:index, :new, :show, :create, :destroy, :edit, :update] do
    resources :beers, only: [:index, :new, :show, :create, :destroy, :edit, :update]
  end
  resources :all_beers, only: [:index]

  resources :beers_users, only: [:create, :destroy]
  
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
