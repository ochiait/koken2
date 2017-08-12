Rails.application.routes.draw do
  root 'top#index'
  resources :contents, :except => [:show]
  resources :activities, :except => [:show] do
  # 下記は右と同じ　get "activities/:id/confirm_email" => "activities#confirm_email" ,as:"confirm_email_activity"
  # :idを入れたくないときはcollectinを使う
    member do
      get :confirm_email
    end
  end

  resources :wards, :except => [:show]
  devise_for :guardians
  resources :guardians, :except => [:index, :new]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
