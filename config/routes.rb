Rails.application.routes.draw do
  resources :organizations
  
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :employees

  root 'organizations#index'
end
