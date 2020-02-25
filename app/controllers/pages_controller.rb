class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @items = Item.all
    @portions = Item.all.map { |c| c.portions }.uniq
    @occasions = Item.all.map { |c| c.occasion }.uniq
    @flavours = Item.all.map { |c| c.flavour }.uniq
  end

  # def profile
  #   @user = current_user
  #   @orders = @user.orders
  #   @items = @user.items
  # end
end
