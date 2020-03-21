Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :challenges, only: [:show, :new, :create]
      resources :dailytips, only: [:show, :create]
    end
  end
end
