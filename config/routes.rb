Rails.application.routes.draw do
  get '/home', to:'static#home'
  get '/team', to:'static#team'
  get '/contact', to:'static#contact'
  get '/welcome/:first_name', to:'static#welcome'
  get '/welcome/user/:id', to:'static#show', as: 'user_show_id'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end