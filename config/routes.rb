Rails.application.routes.draw do

  root 'top#index'

  devise_for :guardians

  resources :reports, :only => [:index]
  resources :settings, :only => [:index]
  resources :contents, :except => [:show]
  resources :activities, :except => [:show] do
  # 下記は右と同じ　get "activities/:id/confirm_email" => "activities#confirm_email" ,as:"confirm_email_activity"
  # :idを入れたくないときはcollectinを使う
    member do
      get :confirm_email
      post :send_email
    end
  end

  resources :wards, :except => [:show]
  resources :guardians, :except => [:index, :new]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
