class ItemsController < ApplicationController
  def index
    @items = Item.all
    @items = @items.where(flavour: params[:flavour]) if params[:flavour]
    @items = @items.where(portions: params[:portions]) if params[:portions]
    @items = @items.where(occasion: params[:occasion]) if params[:occasion]
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
     @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path(@item)
    else
      render :new
    end
  end

  def edit
    @items = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect to item_path(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:user_id, :cost, :flavour, :portions, :occasion)
  end
end
