Rails.application.routes.draw do
  devise_for :users
  resources :challenges, only: :show do
    post 'start', on: :member
  end
end
