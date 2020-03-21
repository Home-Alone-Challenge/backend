Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create] do
        resources :challenges, only: [:show, :new, :create, :edit, :index, :destroy]
      end
      resources :dailytips, only: [:create, :show]
    end
  end
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
