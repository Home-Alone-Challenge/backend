Rails.application.routes.draw do
namespace :api, defaults: { format: :json } do
    namespace :v1 do
      root to: 'challenges#index'
      resources :users, only: [:show, :create] do
        resources :challenges, only: [:show, :new, :create, :edit, :index, :destroy]
      end
      resources :dailytips, only: [:create, :show]
      get '/random_challenge', to: "challenges#random_challenge", as: :random_challenge
      get '/random_dailytip', to: "dailytips#random_dailytip", as: :random_dailytip
    end
  end
end
