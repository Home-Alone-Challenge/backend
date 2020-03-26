Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      root to: 'challenges#index'
      resources :users, only: [:show, :create] do
        resources :challenges, only: [:show, :new, :create, :update, :index, :destroy]
        resources :feedbacks, only: [:create]
      end
      resources :feedbacks, only: [:index]
      resources :dailytips, only: [:create, :show]
      get '/random_challenge', to: "challenges#random_challenge", as: :random_challenge
      get '/daily_challenge', to: "challenges#daily_challenge", as: :daily_challenge
      get '/daily_tip', to: "dailytips#daily_tip", as: :daily_tip
      get '/random_dailytip', to: "dailytips#random_dailytip", as: :random_dailytip
    end
  end
end
