class ItemsController < ApplicationController
  def index
  end

  def show
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

  end

  def update

  end

  def delete
  end
end
