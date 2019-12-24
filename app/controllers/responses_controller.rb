class ResponsesController < ApplicationController
    before_action :set_responses, only: [:index]
    before_action :set_response, only: [:show]

    def show
        render json: @response
    end

    private
    def set_response
        @response = Response.find_by(user_id: params[:user_id], prompt_id: params[:prompt_id]) # then return all the responses that belong to this user
    end
        
end