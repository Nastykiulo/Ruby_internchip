class User < ApplicationRecord
   #before_action :authenticate_user!
   after_create :default_role 
  

   enum role: [:guest, :teacher, :student, :admin]
  # after_initialize :set_default_role, :if => :new_record?

  # def set_default_role
  #   self.role ||= :guest
  # end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   private
   def default_role
      self.role ||= :guest
   end
end
 