class OrdersController < ApplicationController
  def new

  end

  def create
  end

  def destroy
    @order = Order.find(params[:id])
    @order.delete
    redirect_to items_path
  end
end
