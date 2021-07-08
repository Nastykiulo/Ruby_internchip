class Teacher < ApplicationRecord
    has_many :student
    has_many :test
end
