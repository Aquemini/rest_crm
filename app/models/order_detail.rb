class OrderDetail < ApplicationRecord
  belongs_to :order
  validates :order_id, :product_id, :quantity, presence: true
end
