class Sale < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  belongs_to :subscription
  belongs_to :Product_quantity
end
