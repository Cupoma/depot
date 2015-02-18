class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  def index
    @products = Product.order(:title)

    t = Time.now
    @time = t.strftime "%Y-%m-%d %H:%M"
  end
end
