Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  # Defines the root path route ("/")
  root "main#index"
end
