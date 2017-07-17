class TopController < ApplicationController

  def index
  	@wards = current_guardian.wards
  end

end
