Rails.application.routes.draw do
  resources :profiles
  devise_for :users

  root :to => "profiles#index"
  # root :to => "devise/sessions#new"

  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
