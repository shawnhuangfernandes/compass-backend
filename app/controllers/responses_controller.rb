class ResponsesController < ApplicationController
    before_action :set_responses, only: [:index]
    before_action :set_response, only: [:show]

    def show
        render json: @response
    end

    private
    def set_response
        @response = Response.find(params[:id]) # then return all the responses that belong to this user
    end
        
end