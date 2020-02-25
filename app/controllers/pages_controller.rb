class PagesController < ApplicationController
  def home
    @items = Item.all
    @portions = Item.all.map { |c| c.portions }.uniq
    @occasions = Item.all.map { |c| c.occasion }.uniq
    @flavours = Item.all.map { |c| c.flavour }.uniq
  end
end
