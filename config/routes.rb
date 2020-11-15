Rails.application.routes.draw do
  resources :tips
  resources :races
  resources :race_courses
  resources :horses
  devise_for :users
  

  # Profile

  get 'onlytips/index', to: "onlytips#index"
  get '/profile', to: "profile#profile"
  get '/home', to: "profile#home"
  get '/test', to: "profile#test"
  

  # Admin menu
  get '/admin', to: "admin#admin"
  get '/admin/horse', to: "admin#horse"
  get '/admin/race_course', to: "admin#race_course"
  get '/admin/race', to: "admin#race"
  get 'admin/authorize_tipper', to: "admin#authorize_tipper"
  # Devise Where to send after user login/created
  get '/user' => "profile#profile", :as => :user_root


get '/tips', to: "tips#index"
  
  
  
  root 'onlytips#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
