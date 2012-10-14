Swquilla::Application.routes.draw do
  resources :interested_users, only: [:new, :create]
  root :to => 'interested_users#new'
end
