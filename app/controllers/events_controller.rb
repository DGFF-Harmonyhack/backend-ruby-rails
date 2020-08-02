class EventsController < ApplicationController 
    def create 
        @event = Event.create(event_params)
        # have to think about how to handle creater_uid 
        # also resolved stat should be false by default until update 
        render json: @event.to_json
    end 

    def show 
        @event = Event.find(params[:id])
        render json: @event.to_json
    end 

    private 
    def event_params 
        params.permit(:location, :resolved_stat, :description, :creater_uid)
    end 
end 