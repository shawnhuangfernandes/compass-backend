class PromptsController < ApplicationController
    before_action :set_prompts, only: [:index]
    before_action :set_prompt, only: [:show, :get_prompt]
    
    def index
        render json: @prompts
    end

    def show    
        render json: {
            title: @prompt.title,
            header: @prompt.header,
            body: @prompt.body,
            category: @prompt.category,
            response: Response.find_by(user_id: params[:user_id], prompt_id: @prompt.id)
        }
     end

    private
    def set_prompts
        @prompts = Prompt.all # then return all the prompts that belong to this user
    end

    def set_prompt
        @prompt = Prompt.find(params[:id]) # then return all the prompts that belong to this user
    end
        
end
