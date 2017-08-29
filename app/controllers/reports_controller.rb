class ReportsController < ApplicationController

  def index
   @ward = Ward.find(params[:id])
   @activities = @ward.activities
   @visits = Visit.where(activity_id: @activities)
   @contents = Content.where(id: @visits)
  end

	def selection
		@wards = current_guardian.wards
	end

end
