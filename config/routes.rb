Rails.application.routes.draw do

  root 'top#index'

  devise_for :guardians

  resources :settings, :only => [:index]
  resources :contents, :except => [:show]
  resources :activities, :except => [:show]
  resources :guardians, :except => [:index, :new]
  resources :reports, :only => [:selection]

  resources :wards, :except => [:show] do
    resources :reports, :only => [:index]
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
