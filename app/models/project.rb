class Project < ActiveRecord::Base
    
  has_many :orders
  has_one_attached :avatar
  belongs_to :contractor
end