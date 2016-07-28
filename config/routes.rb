Rails.application.routes.draw do
  root 'url#index'
  post 'url/create'
  get 'url/:id' => 'url#show', as: 'url'
end
