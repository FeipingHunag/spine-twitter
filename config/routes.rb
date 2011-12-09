SpineTwitter::Application.routes.draw do
  
  get "app/index"

  match "/auth/twitter/callback" => "sessions#create"
  match "/logout" => "session#destroy", :as => :logout
  match "/authorize" => redirect("/auth/twitter")
  
  root :to => "app#index"
end
