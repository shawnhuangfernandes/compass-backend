class Curriculum < ApplicationRecord
    has_many :lessons

    def create_lesson(title: title)
        return Lesson.create(title: title, 
                             progress: 0, 
                             curriculum_id: self.id)
    end

    def calculate_progress(user_id)
        50
    end
end
