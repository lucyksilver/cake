class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if user_signed_in?
      @items = Item.where.not(user: current_user)
    else
      @items = Item.all
    end

    if params[:search].present?
      # hash_search => {flavour: "Vanilla", portions: "10-15"}
      hash_search = params.require(:search).permit(:flavour, :occasion, :portions)
      hash_search.delete_if {|key, value| value == "" }

      @items = @items.where(hash_search)
    elsif params[:query]
      @items = @items.global_search(params[:query])
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
     @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
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
    params.require(:item).permit(:user_id, :cost, :flavour, :portions, :occasion, :description, :photo, :name)
  end
end
