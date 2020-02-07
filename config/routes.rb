Rails.application.routes.draw do
    
  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, :controllers => {
      :omniauth_callbacks => 'users/omniauth_callbacks', #facebookログイン
      :registrations => 'users/registrations', #登録時
      :sessions => 'users/sessions',
      :passwords => 'users/passwords'
  }

  
  get 'users/show'
  get 'comments/index'
  root 'static_pages#home' # => root_path
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  resources :users

  # => contact_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'

end
