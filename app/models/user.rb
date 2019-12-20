class User < ApplicationRecord
    has_many :prompts, through: :user_prompts
    has_many :user_prompts
    has_many :curriculums, through: :user_curriculums
    has_many :user_curriculums
end
