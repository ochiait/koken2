class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:edit, :update, :destroy]

  # GET /activities
  # GET /activities.json
  def index
    if params[:ward_id]
      @activities = Activity.where(ward_id: params[:ward_id]).oneyear
      @wards = Ward.find(params[:ward_id])
    else
      @activities = Activity.oneyear
    end
  end

  # GET /activities/new
  def new
    @activity = Activity.new
    @contents = Content.all
    @ward = Ward.find(params[:ward_id])
    return redirect_to activities_path(ward_id: params[:ward_id]) if params[:history]
  end

  # GET /activities/1/edit
  def edit
    @contents = Content.all
    @content_id = @activity.visits.first.content_id

    if params[:ward_id]
      @ward = Ward.find(params[:ward_id])
    else
      @ward = @activity.ward
    end
  end

  # POST /activities
  # POST /activities.json

  def create
      # activity_paramsの中身はハッシュ{:memo, :comment, :photo, :photo_cache, :ward_id, :meeting_at}
      @activity = Activity.new(activity_params)
      @visit = Visit.new
      # current_guardianはヘルパーメソッドで定義されている。hoge.name の時の hoge は引数ではなくレシーバという。
      @activity.guardian_id = current_guardian.id
      @activity.create_with_visit(@visit,params[:content_id])

      respond_to do |format|
        if @activity.persisted?
          format.html { redirect_to confirm_email_activity_path(@activity.id), notice: 'Activity was successfully created.' }
          format.json { render :confirm_email, status: :created, location: @activity }
        else
          @contents = Content.all
          format.html { render :new }
          format.json { render json: @activity.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        @activity.visits.first.update(content_id: params[:content_id])
        format.html { redirect_to root_path, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @wards = Ward.find(@activity.ward_id)
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url(ward_id: @wards.id), notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def confirm_email
      @activity = Activity.find(params[:id])
      @ward = @activity.ward
  end

  def send_email
      activity = Activity.find(params[:id])
      families = activity.ward.families
      families.each do |family|
        ActivityMailer.activity_email(family, activity).deliver
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:memo, :comment, :photo, :photo_cache, :ward_id, :meeting_at)
    end

end
