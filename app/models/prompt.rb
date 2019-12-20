class Prompt < ApplicationRecord
    has_many :users, through: :user_prompts
    has_many :user_prompts
    belongs_to :lesson
end
