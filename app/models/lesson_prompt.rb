class LessonPrompt < ApplicationRecord
    belongs_to :prompt
    belongs_to :lesson
end
