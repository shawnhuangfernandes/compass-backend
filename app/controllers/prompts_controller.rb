class PromptsController < ApplicationController
    before_action :set_prompts, only: [:index]
    before_action :set_prompt, only: [:show]
    
    def index
        render json: @prompts_of_user
    end

    def show
        byebug
        render json: @prompt
    end

    private
    def set_prompts
        @user = User.find(params[:user_id]) # find the user that "owns" this prompt
        @prompts_of_user = @user.prompts # then return all the prompts that belong to this user
    end

    def set_prompt
        @user = User.find(params[:user_id]) # find the user that "owns" this prompt
        @prompt = Prompt.find(params[:id]) # then return all the prompts that belong to this user   
        @response = Response.find_by(user_id: @user.id, prompt_id: @prompt.id)
        byebug
    end
        
end
