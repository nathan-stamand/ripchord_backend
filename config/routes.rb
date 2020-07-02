Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get "/users", to: "users#index"
      get "/users/login", to: "users#login"
      post "/users/login", to: "users#login"
      post "/users/logout", to: "users#logout"
      post "/users", to: "users#create"
      post "/users/:id", to: "users#show"
      resources :users, only: [:index, :show] do
        resources :songs
      end
    end
  end
end
