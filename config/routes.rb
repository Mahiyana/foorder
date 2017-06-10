Rails.application.routes.draw do
  root to: "application#main"
  #devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } 
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
end
