Rails.application.routes.draw do

  root 'top#index'

  devise_for :guardians

  resources :reports, :only => [:index]
  resources :settings, :only => [:index]
  resources :contents, :except => [:show]
  resources :activities, :except => [:show]
  resources :wards, :except => [:show]
  resources :guardians, :except => [:index, :new]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
