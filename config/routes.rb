Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users
  root "home#index"
  get '/sign_in',:to => 'home#sign_in', :as => "signin"
  get '/logout', :to => 'home#logout', :as => "signout"
  get 'home/index',to: 'home#index',:as => "home"
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
