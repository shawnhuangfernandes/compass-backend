class Prompt < ApplicationRecord
    has_many :responses
    has_many :users, through: :responses
    belongs_to :lesson
end
