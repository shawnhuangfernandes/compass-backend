class Prompt < ApplicationRecord
    has_many :users, through: :user_prompts
    has_many :user_prompts
    has_many :lessons, through: :lesson_prompts
    has_many :lesson_prompts
end
