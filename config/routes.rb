Rails.application.routes.draw do
  root "motorcycles#index"
  resources :motorcycles
end