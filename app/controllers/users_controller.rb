class UsersController < ApplicationController 
    # this needs to pull up the entire hash full of the user's uu as well as all the events and responses related to the user 
    # also, figure out how to handle "SHOW MORE" logic in here, maybe keep a counter in the front and send it in API call to notify the backend which set of "resposnes" or "events" to load up at that given point 
    def show 
        @user = User.find(params[:id])
        @saved_events = [ 1, 2, 3, 4, 5 ]
        @saved_responses = [ 1, 2, 3, 4, 5 ]

        @user_info = {
            user_id: @user.id,
            uuid: @user.uu,
            saved_events: @saved_events, 
            saved_responses: @saved_responses,
            response_index: user_params[:response_index],
            event_index: user_params[:event_index]
        }
        render json: @user_info.to_json
    end 

    private

    def user_params 
        params.permit(:response_index, :event_index)
    end 

end