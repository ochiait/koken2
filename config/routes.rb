Rails.application.routes.draw do
  resources :activities
  resources :wards
  devise_for :guardians
  resources :guardians
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
