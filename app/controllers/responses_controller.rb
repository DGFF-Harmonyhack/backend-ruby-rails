class ResponsesController < ApplicationController

    def index
        @responses = Response.all
        render json: @responses.to_json
    end
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
        params.permit(:event_id, :user_id, :response_type, :details)
    end
end
