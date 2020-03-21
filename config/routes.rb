Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :challenges, only: [:show, :new, :create]
      resources :dailytips, only: [:show, :create]
    end
  end
end
