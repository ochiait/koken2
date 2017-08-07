class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_guardian!, :ensure_domain, :activate_ssl

  # xxx.herokuapp.comへアクセスが来たら正しいURLへリダイレクト
  def ensure_domain
    unless /\.herokuapp.com/ =~ request.host
      return
    end
    unless [80, 443].include?(request.port)
      port = ":#{request.port}"
    end
    redirect_to "#{request.protocol}kokennin.com#{port}#{request.fullpath}", status: :moved_permanently
  end

	#httpからhttpsへリダイレクト
	def activate_ssl
		if (Rails.env.production?) && !(request.ssl?)
		redirect_to :protocol => "https://", :status => :moved_permanently
		end
	end
end