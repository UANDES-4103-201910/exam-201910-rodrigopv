class Order < ApplicationRecord
  validate :has_at_least_one_product
  belongs_to :user
  #belongs_to :billingaddress
  #belongs_to :shippingaddress

  belongs_to :billingaddress, :class_name => "Address"
  belongs_to :shippingaddress, :class_name => "Address"
  has_many :order_products
  has_many :products, :through => :order_products

  def has_at_least_one_product
     errors.add(:base, 'order must have at least one product') if self.products.blank?
  end
end
