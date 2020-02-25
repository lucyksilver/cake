class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
  end

  def destroy
    @order = Order.find(params[:id])
    @order.delete
    redirect_to items_path
  end

  private

  def order_params
    params.require(:order).permit(:description)
  end
end
