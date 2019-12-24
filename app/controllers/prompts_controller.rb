class PromptsController < ApplicationController
    before_action :set_prompts, only: [:index]
    before_action :set_prompt, only: [:show]
    
    def index
        render json: @prompts
    end

    def show
        render json: @prompt
    end

    private
    def set_prompts
        @prompts = Prompt.all # then return all the prompts that belong to this user
    end

    def set_prompt
        @prompt = Prompt.find(params[:id]) # then return all the prompts that belong to this user
    end
        
end
