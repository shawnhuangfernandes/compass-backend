class Curriculum < ApplicationRecord
    has_many :users, through: :user_curriculums
    has_many :user_curriculums
    has_many :lessons

    def create_lesson(title: title)
        return Lesson.create(title: title, 
                             progress: 0, 
                             curriculum_id: self.id)
    end
end
