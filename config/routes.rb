Rails.application.routes.draw do
  root 'application#index'
  namespace :api do
    resources :restaurants, only: [:create, :show, :index]
  end
  get '*path' => 'application#index'
end
