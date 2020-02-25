class OrdersController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @order = Order.new
  end

  def create
    @item = Item.find(params[:item_id])
    user = current_user
    @order = Order.new(order_params)
    @order.item = @item
    @order.user = user
    if @order.save
      redirect_to item_order_path(@item, @order)
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
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
