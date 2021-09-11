Rails.application.routes.draw do
  #item用
  get 'items/index' => 'items#index'
  get 'items/show/:id' => 'items#show'
  post 'items/create' => 'items#create'
  patch 'items/update/:id' => 'items#update'
  delete 'items/destroy/:id' => 'items#destroy'
end
