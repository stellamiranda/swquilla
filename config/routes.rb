Swquilla::Application.routes.draw do
  resources :interested_users, only: [:new, :create]
end
