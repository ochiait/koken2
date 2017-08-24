Rails.application.routes.draw do
  get 'report/index' => "report#index", as:"report"

  get "settings" => "settings#index", as:"settings"

  root 'top#index'
  resources :contents, :except => [:show]
  resources :activities, :except => [:show]
  resources :wards, :except => [:show]
  devise_for :guardians
  resources :guardians, :except => [:index, :new]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
