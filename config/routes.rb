Rails.application.routes.draw do

  namespace :admin do
    get '/' => 'base#index'
    resources :books
  end

  get 'admin/login' => 'admin/sessions#new'
  post 'admin/login' => 'admin/sessions#create'
  delete 'admin/logout' => 'admin/sessions#destroy'



  get '/admin/signup' => 'admin/users#new'
  post 'admin/signup' => 'admin/users#create'

end
