class Test < ApplicationRecord
    belongs_to :teacher
    belongs_to :student
    has_many :question
end