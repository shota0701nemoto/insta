Rails.application.routes.draw do
    
  devise_for :users, :controllers => {
      :omniauth_callbacks => 'users/omniauth_callbacks',
      :registrations => 'users/registrations',
      :sessions => 'users/sessions',
      :passwords => 'users/passwords'
  }
  
  devise_scope :user do
     get 'my_page' => 'users/registrations#my_page' #app/controllers/users/registrations_controller.rbのmy_pageアクションを実行。同時にリダイレクト先になるのがapp/views/devise/registrations/my_page.html.erb
         
   end
  
  
  
  get 'comments/index'
  root 'static_pages#home' # => root_path
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'

  # => contact_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'

end
