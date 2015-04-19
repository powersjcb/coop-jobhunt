Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: :callbacks}
  root 'static_pages#home'
end
