Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ping
      resources :secured
      resource :users
      resources :items
      resources :lost_items do
        collection do
          post 'verificate_qrcode' => 'lost_items#is_valid?'
        end
      end
    end
  end
end
