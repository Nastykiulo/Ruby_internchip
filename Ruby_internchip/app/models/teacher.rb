class Teacher < ApplicationRecord
    #has_many :student
    has_and_belongs_to_many :students
    has_many :test
    #has_many :users, -> {where(role: student)}
end
