class Lesson < ApplicationRecord
    belongs_to :curriculum
    has_many :prompts

    def create_prompt(title:, header:, body:, category:)
        return Prompt.create(title: title, 
                             prompt_header: header,
                             prompt_body: body,
                             category: category,
                             lesson_id: self.id)
    end

    def calculate_progress(user_id)
        50
    end
end
