Rails.application.routes.draw do

  get 'errors/not_found'

  get 'errors/internal_server_error'

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

  get "/403" => "errors#forbidden", as: :error_403
  get "/404" => "errors#not_found", as: :error_404
  get "/500" => "errors#internal_server_error", as: :error_500
end
