Rails.application.routes.draw do
  root 'top#index'
  resources :contents, :except => [:show]
  resources :activities, :except => [:show]
  get "activities/:id/mail" => "activities#mail", as: 'activities_mail'
  resources :wards, :except => [:show]
  devise_for :guardians
  resources :guardians, :except => [:index, :new]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
