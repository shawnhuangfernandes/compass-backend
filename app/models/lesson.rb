class Lesson < ApplicationRecord
    belongs_to :curriculum
    has_many :prompts

    def create_prompt(title: title, header: header, body: body)
        return Prompt.create(title: title, 
                             prompt_header: header,
                             prompt_body: body,
                             lesson_id: self.id)
    end
end
