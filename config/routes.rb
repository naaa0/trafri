Rails.application.routes.draw do
  devise_for :users
  root to: "groups#index"
  resources :groups do
    resources :messages
  end
end
