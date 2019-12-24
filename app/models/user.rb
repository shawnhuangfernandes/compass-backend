class User < ApplicationRecord
    has_many :responses
    has_many :prompts, through: :responses
end
