class CamperActivitiesController < ApplicationController
    def index
      @camper_activities = CamperActivity.all
    end

    def new
      @camper_activity = CamperActivity.new
      @campers = Camper.all 
      @activities = Activity.all
    end

    def create 
      @camper_activity = CamperActivity.create(camper_activity_params)
      if @camper_activity.valid?
        redirect_to camper_path(@camper_activity.camper)
      else
        flash[:camper_activity_errors] = @camper_activity.errors.full_messages
        redirect_to new_camper_activity_path
      end
    end

    private
    def camper_activity_params
      params.require(:camper_activity).permit(:camper_id, :activity_id, :signup)
    end
  
  end