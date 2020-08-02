class UsersController < ApplicationController 
    def index
        @users = User.all 
        render json: @users.to_json
    end 

    def show 
        @user = User.find(params[:id])
        
        @responses = Response.all.select{|response| response.user_id == @user.id}.reverse()
        @events = Event.all.select{|event| event.user_id == @user.id}.reverse()

        @response_page = params[:response_index].to_i
        @event_page = params[:event_index].to_i

        if (@responses.length() > (5 * @response_page))
            @response_index = ((@response_page * 5) - 4)
            @saved_responses = @responses.slice(@response_index..5)
            @response_page +=1
        else
            @saved_responses = @responses
        end 

        if (@events.length() > (5 * @event_page))
            @event_index = ((@event_page * 5) - 4)
            @saved_events = @events.slice(@response_index..5)
            @event_page += 1
        else 
            @saved_events = @events 
        end 

        @user_info = {
            user_id: @user.id, 
            uuid: @user.uu, 
            saved_events: @saved_events, 
            saved_responses: @saved_responses, 
            response_index: @response_page, 
            event_index: @event_page
        }
        render json: @user_info.to_json
    end 

    private
    def user_params 
        params.permit(:response_index, :event_index)
    end 

end