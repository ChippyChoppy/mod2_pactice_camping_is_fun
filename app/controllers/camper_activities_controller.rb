class CamperActivitiesController < ApplicationController
    
    def new
      @camper_activity = CamperActivity.new
      @campers = Camper.all 
      @activities = Activity.all
    end

    def create 
      camper_activity = CamperActivity.create(camper_activity_params)
      redirect_to camper_path(camper_activity.camper)
    end

    private
    def camper_activity_params
      params.require(:camper_activity).permit(:camper_id, :activity_id, :signup)
    end
  
  end