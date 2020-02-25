class ItemsController < ApplicationController
  def index
    @items = Item.all
    @items = @items.where(flavour: params[:flavour]) if params[:flavour]
    @items = @items.where(portions: params[:portions]) if params[:portions]
    @items = @items.where(occasion: params[:occasion]) if params[:occasion]
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
