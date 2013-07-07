Loveknit::Application.routes.draw do
  resources :users do
    resources :patterns
  end

  resources :sessions, only: [:new, :create, :destroy]

  get     '/signup',   to: 'users#new'
  get     '/login',    to: 'sessions#new'
  delete  '/logout',   to: 'sessions#destroy'

  root :to => 'high_voltage/pages#show', :id => 'home'

  # Using High Voltage
  # get 'pages/home' => 'high_voltage/pages#show', :id => 'home'
end
