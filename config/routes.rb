Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'welcome/hello'
  
  resources :users
  resources :todos
  resources :buses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
