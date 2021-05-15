Rails.application.routes.draw do
  resources :cities, only: [:index]
  resources :companies
  resources :jobs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
