class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  # ログイン済みguadrianかどうか確認
  def signed_in_guadrian
    unless guardian_signed_in?
      flash[:notice] = "ログインが必要です"
      redirect_to new_guardian_session_path
    end
  end

end