Rails.application.routes.draw do
  root to: "users#new"
  get "/auth/github/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  resources :dashboard, only:[:show]
end
