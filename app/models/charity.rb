class Charity < ApplicationRecord
    mount_uploader:image, ImageUploader
    serialize:image,JSON 
    belongs_to:user, optional:true
    has_many :deliveries
    validates_uniqueness_of :name
    
    validates :name, :county, :address, :image, presence:true
    validates:description, length: {maximum:1000, too_log: "%{count} characters is the maximum allowed."}
    validates :name, length: {maximum:100, too_log: "%{count} characters is the maximum allowed."}
    validates :phonenumber, numericality: {only_integer:true},length: {maximum: 10} 
    
    
    resourcify
     

end
