Rails.application.routes.draw do
  root 'url#index'
  get 'url/show/:id' => 'url#show'
  post 'url/create'
  get '*code' => 'url#code', format: false
end
