class ResponsesController < ApplicationController
    before_action :set_response, only: [:show, :update]

    def show
        render json: @response
    end

    def update
        @response.update(response_params)
        render json: @response
    end

    def create
        @response = Response.find_by(user_id: params[:user_id], prompt_id: params[:prompt_id])
        if @response
            @response.update(response_params)
        else
            @response = Response.find_or_create_by(response_params)
        end
        render json: @response
    end

    private
    def set_response
        @response = Response.find(params[:id]) # then return all the responses that belong to this user
    end

    def response_params
        params.permit(:user_id, :name, :prompt_id, :body, :complete)
    end
        
end