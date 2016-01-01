Rails.application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config
  resources :users
  ActiveAdmin.routes(self)

  root 'application#index', as: :frontpage

  resources :sites do
    resources :conditions
  end

end
