class ItemsController < ApplicationController
	include SessionsHelper
  def examine
    @item = Item.where(name: params[:name]).first
    render layout: false
  end
  
  def take
    @item = Item.where(name: params[:name]).first
    @item.inventory_id = session[:current_user_id]
    @item.save
    render layout: false
  end
  
  def drop
    @item = Item.where(name: params[:name]).first
    @item.inventory_id = nil
    @item.save
    render layout: false
  end
end
