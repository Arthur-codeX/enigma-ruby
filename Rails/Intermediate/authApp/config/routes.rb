Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  get "simple", to:"simple_auth#index"
  get "simple/login", to:"simple_auth#login"
  get "simple/check", to: "simple_auth#check"

  get "app", to:"user#index"

  get "app/login", to:"user#login"

  get "app/signup", to:"user#signup"

  get "app/cart", to:"user#cart"

  get "app/add-cart", to:"user#add_cart"

  post "app/new", to:"user#new"

  post "app/login-auth", to:"user#login_auth"

  post "jwt/login", to:"jwt#login"

  get "jwt/check", to:"jwt#check"

  

end
