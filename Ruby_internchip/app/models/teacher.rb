class Teacher < User
    #has_many :student
    #has_and_belongs_to_many :students
    #has_many :test
    #has_many :users, -> {where(role: student)}
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    private
    
end
