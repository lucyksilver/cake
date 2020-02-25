class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @items = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect to item_path(@item)
  end

  def delete
  end
end
