class ReportsController < ApplicationController

  def index
   @ward = Ward.find(params[:ward_id])
   @activities = @ward.activities
  end

	def selection
		@wards = current_guardian.wards
	end

end
