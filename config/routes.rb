Rails.application.routes.draw do

  namespace :admin do
    get '/' => 'books#index'
    resources :books
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'



  get '/admin/signup' => 'admin/users#new'
  post 'admin/signup' => 'admin/users#create'

end
