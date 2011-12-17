SpineTwitter::Application.routes.draw do
  
  resources :statuses do
    collection do
      get 'home_timeline'
    end  
  end

  match "/auth/twitter/callback" => "sessions#create"
  match "/logout" => "session#destroy", :as => :logout
  match "/authorize" => redirect("/auth/twitter")
  match "/home_timeline" => "app#home_timeline" 

  root :to => "app#index"
end
