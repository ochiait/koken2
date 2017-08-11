class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:edit, :update, :destroy]

  # GET /activities
  # GET /activities.json
  def index
    if params[:ward_id]
      @activities = Activity.where(ward_id: params[:ward_id]).oneyear
      @ward = Ward.find(params[:ward_id])
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
    if params[:ward_id]
    @ward = Ward.find(params[:ward_id])
    else
    @ward = @activity.ward
    end
  end

  # POST /activities
  # POST /activities.json

  def create
      # activity_paramsの中身はハッシュ{:content, :memo, :comment, :photo, :photo_cache, :ward_id}
      @activity = Activity.new(activity_params)
      @visit = Visit.new
      # current_guardianはヘルパーメソッドで定義されている。hoge.name の時の hoge は引数ではなくレシーバという。
      @activity.guardian_id = current_guardian.id
      @activity.create_with_visit(@visit,params[:content_id])

      respond_to do |format|
        if @activity.persisted?
          format.html { redirect_to activities_mail_path(@activity.id), notice: 'Activity was successfully created.' }
          format.json { render :email, status: :created, location: @activity }
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
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mail
      @activity = Activity.find(params[:id])
      @ward = @activity.ward
  end

  def send_mail
      ActivityMailer.activity_email(family, activity).deliver
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:content, :memo, :comment, :photo, :photo_cache, :ward_id)
    end

end
