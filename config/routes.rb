Rails.application.routes.draw do
  devise_for :users
  resources :profile
  ActiveAdmin.routes(self)

  root 'application#index', as: :frontpage

  resources :sites do
    member do
      get :check
    end
    resources :conditions
    resources :logs, only: [:index, :show]
  end

  namespace :info do
    get :about_us
    get :premium
    get :contact
  end

  get "/change_language/:code" => "application#change_language", as: :change_language

  get "/403" => "errors#forbidden", as: :error_403
  get "/404" => "errors#not_found", as: :error_404
  get "/500" => "errors#internal_server_error", as: :error_500



end
