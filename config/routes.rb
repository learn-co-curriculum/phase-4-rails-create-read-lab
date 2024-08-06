Rails.application.routes.draw do
  resources :plants, only: [:create, :index, :show]
end
