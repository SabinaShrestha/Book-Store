Rails.application.routes.draw do

  namespace :admin do
    get '/' => 'base#index'
    resources :books
  end

  get '/admin/signup' => 'admin/users#new'
  post 'admin/signup' => 'admin/users#create'

end
