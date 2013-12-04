class ItemsController < ApplicationController
	include SessionsHelper
  def examine
	@item = Item.where(name: params[:name]).first
  end
  
  def take
	@item = Item.where(name: params[:name]).first
	@item.inventory_id = session[:current_user_id]
    @item.save
  end
  
  def drop
	@item = Item.where(name: params[:name]).first
	@item.inventory_id = nil
    @item.save
  end
end
