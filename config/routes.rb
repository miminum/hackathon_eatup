Rails.application.routes.draw do
  get '/restaurants', to: "restaurants#index"

  resources :profiles
  get '/cuisine', to: "profiles#cuisine_selector", as: 'cuisine'
  post '/cuisine', to: "profiles#cuisine_update"
  devise_for :users

  root :to => "profiles#index"
  # root :to => "devise/sessions#new"

  resources :conversations do
    resources :messages
  end
end

def after_sign_up_path_for(resource)
  new_profile_path
end

  
