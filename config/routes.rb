Rails.application.routes.draw do
  resources :tips
  resources :races
  resources :race_courses
  resources :horses
  devise_for :users
  

  # Admin menu

  get '/admin', to: "admin#admin"
  get '/admin/horse', to: "admin#horse"
  get '/admin/race_course', to: "admin#race_course"
  get '/admin/race', to: "admin#race"
  get 'admin/authorize_tipper', to: "admin#authorize_tipper"
  patch 'admin/authorize_tipper', to: "admin#admin"
  get '/admin/authorize/:id/edit/', to: "admin#edit", as: "edit_user"
  get '/admin/authorize/', to: "admin#authorize_tipper"
  patch '/admin/authorize/:id/edit', to: "admin#update"

# Tippers 

get '/tippers', to: "tippers#index"
get '/tippers/:id/show', to: "tippers#show", as: "show_tipper"




  # dashboard

  get 'onlytips/index', to: "onlytips#index"
  get '/dashboard', to: "dashboard#dashboard"
  get '/test', to: "profile#test"



  # Devise Where to send after user login/created
  get '/user' => "dashboard#dashboard", :as => :user_root


get '/tips', to: "tips#index"
  


  # Payment

  post '/tippers/:tipper_id/subscribe', to: 'tippers#subscribe'
  post '/tippers/:id/buy', to: 'tippers#buy', as: 'buy'
  get '/tippers/:id/success', to: 'tippers#success', as: 'success'
  get '/tippers/cancel', to: 'tippers#cancel', as: 'cancel'
  

  root 'onlytips#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
