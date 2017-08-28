class ReportsController < ApplicationController

  def index
  	@wards = current_guardian.wards
  end

  def show
   @ward = Ward.find(params[:id])
   @activities = @ward.activities
   @visits = Visit.where(activity_id: @activities)
   @contents = Content.where(id: @visits)
   end

end
