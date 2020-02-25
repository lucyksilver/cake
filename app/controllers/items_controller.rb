class ItemsController < ApplicationController
  def index
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit

  end

  def update

  end

  def delete
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:user_id, :cost, :flavour, :portions, :occasion)
  end
end
