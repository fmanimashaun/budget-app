Rails.application.routes.draw do
  devise_for :users

  resources :categories do
    resources :expenses, only: [:index, :new, :create]
  end

  root "home#index"
end
