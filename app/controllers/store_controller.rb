class StoreController < ApplicationController
  def index
    @products = Product.order(:title)

    t = Time.now
    @time = t.strftime "%Y-%m-%d %H:%M"
  end
end
