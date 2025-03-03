class User < ApplicationRecord
  has_secure_password
  has_one :cart, dependent: :destroy
  has_many :sessions, dependent: :destroy
  has_many :products, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  after_create :create_cart  # Create a cart when a user is created

  private

  def create_cart
    Cart.create(user: self)
  end
end
