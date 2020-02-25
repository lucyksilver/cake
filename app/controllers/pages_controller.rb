class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @portions = Item.all.map { |c| c.portions }.uniq
    @occasions = Item.all.map { |c| c.occasion }.uniq
    @flavours = Item.all.map { |c| c.flavour }.uniq
  end
end
