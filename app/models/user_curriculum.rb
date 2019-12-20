class UserCurriculum < ApplicationRecord
    belongs_to :user
    belongs_to :curriculum
end
