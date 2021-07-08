class Student < ApplicationRecord
    belongs_to :teacher
    has_many :test
    has_many :answer
end
