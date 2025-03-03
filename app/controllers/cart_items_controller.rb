class CartItemsController < ApplicationController
  before_action :require_authentication

  def create
    @cart = Current.session.user.cart
    product = Product.find(params[:product_id])
    cart_item = @cart.cart_items.find_by(product: product)

    if cart_item
      cart_item.update(quantity: cart_item.quantity + 1)
    else
      @cart.cart_items.create(product: product, quantity: 1)
    end

    redirect_to cart_path, notice: "Product added to cart"
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.update(quantity: params[:quantity])
    redirect_to cart_path, notice: "Cart updated"
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_path, notice: "Product removed from cart"
  end
end
