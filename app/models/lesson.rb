class Lesson < ApplicationRecord
    belongs_to :curriculum
    has_many :prompts, through: :lesson_prompts
    has_many :lesson_prompts
end
