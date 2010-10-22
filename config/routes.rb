SampleApp::Application.routes.draw do 

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  match '/contact' => 'pages#contact'
  match '/about' => 'pages#about'
  match '/help' => 'pages#help'
  match '/signup' => 'users#new'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy'  
  root :to => 'pages#home'

end
