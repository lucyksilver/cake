class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
  end

  def delete
  end

  private

  def order_params
    params.require(:order).permit(:description)
  end
end
