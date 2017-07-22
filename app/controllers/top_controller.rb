class TopController < ApplicationController
	before_action :authenticate_guardian!

  def index
  end

end
