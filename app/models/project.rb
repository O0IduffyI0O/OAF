class Project < ActiveRecord::Base
    
    has_many :orders
    
end