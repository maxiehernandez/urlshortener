Rails.application.routes.draw do
  root 'url#index'
  get 'url/show/:id' => 'url#show'
  post 'url/create'
end
