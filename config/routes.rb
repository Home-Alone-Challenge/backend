Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # Allow CORS Request
      match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]

      root to: 'challenges#index'
      resources :users, only: [:show, :create] do
        resources :challenges, only: [:show, :new, :create, :edit, :index, :destroy]
      end
      resources :dailytips, only: [:create, :show]
    end
  end
end
