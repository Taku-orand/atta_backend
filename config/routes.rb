Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ping
      resources :secured
      resources :users
      resources :items
    end
  end
end
