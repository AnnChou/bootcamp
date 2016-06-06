Rails.application.routes.draw do
  root 'events#index'
  resources :events, :dishes
end
