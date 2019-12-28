class User < ApplicationRecord
    has_many :responses
    has_many :prompts, through: :responses

    validates :username, uniqueness: true
end
