class Project < ActiveRecord::Base
    
  has_many :orders
  has_one_attached :avatar
end