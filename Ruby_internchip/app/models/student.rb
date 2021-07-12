class Student < ApplicationRecord
    belongs_to :user
    has_many :test
    has_many :answer
end
