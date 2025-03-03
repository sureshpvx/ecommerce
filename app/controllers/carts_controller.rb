class CartsController < ApplicationController
  before_action :require_authentication

  def show
    @cart = Current.session.user&.cart
    render "carts/show" # Ensure this is here if necessary
  end
end
