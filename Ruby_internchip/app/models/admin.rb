class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:admin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private
   def default_role
      self.role ||= :admin
   end
end
