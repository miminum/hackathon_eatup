Rails.application.routes.draw do
  resources :profiles
  get '/cuisine', to: "profiles#cuisine_selector", as: 'cuisine'
  post '/cuisine', to: "profiles#cuisine_update"
  devise_for :users
  root :to => "profiles#index"
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
