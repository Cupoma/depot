class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)

    t = Time.now
    @time = t.strftime "%Y-%m-%d %H:%M"
  end
end
