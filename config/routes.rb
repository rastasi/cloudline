Rails.application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config
  resources :users
  ActiveAdmin.routes(self)

  root 'application#index', as: :frontpage

  resources :sites do
    member do
      get :check
    end
    resources :conditions
    resources :logs, only: [:index, :show]
  end

end
