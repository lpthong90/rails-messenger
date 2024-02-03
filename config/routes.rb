Rails.application.routes.draw do
  devise_for :users,
    only: :sessions,
    controllers: { sessions: 'users/sessions' },
    path_names: { sign_in: 'login', sign_out: 'logout' }
  devise_scope :user do
    get 'login', to: 'users/sessions#new'
  end
  
  root "chats#index"
  resources :chats do
    resources :messages, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  
end
