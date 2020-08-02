class ResponsesController < ApplicationController 
    def create 
        @response = Response.create(response_params)
        render json: @response.to_json
    end 

    def show 
        @response = Response.find(params[:id])
        render json: @response.to_json
    end 

    private 
    def response_params 
        params.permit(:event_id, :has_evidence, :comment)
    end 
end 
