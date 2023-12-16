Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "lists#index", as: "lists"

  resources :lists, only: [:index, :show, :new, :create] do
    resources :movies, only: [:new, :create]
  end


  # resources :restaurants, only: [:index, :show, :new, :create] do
  #   resources :reviews, only: [:new, :create]
  # end
end
