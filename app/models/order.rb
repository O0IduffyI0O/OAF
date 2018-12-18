class Order < ActiveRecord::Base
  
  validates :n_workers_male, presence: true, numericality: { only_integer: true }
  validates :n_workers_female, presence: true,  numericality: { only_integer: true }
  validates :n_office_staff, presence: true, numericality: { only_integer: true }
    
  belongs_to :project
    
end