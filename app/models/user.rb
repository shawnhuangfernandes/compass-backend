class User < ApplicationRecord
    has_many :prompts, through: :user_prompts
    has_many :user_prompts


end
