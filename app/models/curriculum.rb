class Curriculum < ApplicationRecord
    has_many :users, through: :user_curriculums
    has_many :user_curriculums
    has_many :lessons
end
