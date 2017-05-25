Rails.application.routes.draw do
  resources :activities, :except => [:show]
  resources :wards, :except => [:show]
  devise_for :guardians
  resources :guardians, :except => [:index, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
