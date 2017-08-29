Rails.application.routes.draw do

  root 'top#index'

  devise_for :guardians

  resources :settings, :only => [:index]
  resources :contents, :except => [:show]
  resources :activities, :except => [:show]
  resources :guardians, :except => [:index, :new]
  resources :wards, :except => [:show]

  resources :reports, :only => [:index] do
    collection do
      get 'selection'
    end
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
