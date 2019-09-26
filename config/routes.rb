Rails.application.routes.draw do
  resources :pledges, except: [:index, :delete]
  resources :projects, except: [:edit, :update, :delete]
  resources :users, except: [:delete]
end
