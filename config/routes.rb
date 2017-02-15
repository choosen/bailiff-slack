Rails.application.routes.draw do
  resources :debts, only: :create
end
