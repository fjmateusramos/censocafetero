Rails.application.routes.draw do
  
  resources :encuesta1s
  resources :encuesta
  root 'encuesta#new'
  get "/application.manifest" => Rails::Offline
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
