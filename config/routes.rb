Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get "/users", to: "users#index"
      get "/login", to: "users#login"
      post "/login", to: "users#login"
      post "/logout", to: "users#logout"
      post "/users", to: "users#create"
      post "/users/:id", to: "users#show"
      resources :songs
    end
  end
end
