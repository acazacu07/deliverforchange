class Delivery < ApplicationRecord
  belongs_to :user
  has_many  :events
  belongs_to :charity
  
   resourcify
end

