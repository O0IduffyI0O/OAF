class Offer < ActiveRecord::Base
  validates :client_name, presence: true
  validates :email, presence: true
  validates :order_description, presence: true
end