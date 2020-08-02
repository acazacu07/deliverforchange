class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :deliveries, dependent: :destroy
  
   def admin?
     if  User.count == 1
    has_role?(:admin)
     end
   end
 



end
