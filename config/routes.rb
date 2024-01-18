Rails.application.routes.draw do
  get 'expenses/index'
  devise_for :users

  resources :categories do
    resources :expenses, only: [:index, :new, :create], controller: 'expenses'
  end

  root "home#index"
end
