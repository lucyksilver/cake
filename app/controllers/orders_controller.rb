class OrdersController < ApplicationController
  def new
  end

  def create
    item = Item.find(params[:item_id])
    user = current_user
    @order = Order.new(order_params)
    @order.item = item
    @order.user = user
    if @order.save
      redirect_to item_path(item)
    else
      render :new
    end
  end

  def destroy
  end
end
