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
  
  validates :email, :uniqueness => true
  validates_format_of :email,:with => Devise::email_regexp
  validates :name, presence: true, length: { maximum: 20 }
  validates :address, presence: true, length: { maximum: 30 }
 

end
