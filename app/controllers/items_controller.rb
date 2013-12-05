class ItemsController < ApplicationController
	include SessionsHelper

  def examine
    @item = Item.where(name: params[:name], 
                        room_id: session[:room_id]).first
    if @item.nil?
      render :partial => "partials/error_message", 
             :locals => { 
                :msg => "It doesn't look like there's anything like that around here." 
              }
    else
      render layout: false
    end
  end
  
  def take
    @inventory = Inventory.where(user_id: session[:current_user_id]).first
    @item = Item.where(name: params[:name], 
                        inventory_id: @inventory.id,
                        room_id: session[:room_id], 
                        taken: false).first
    if @item.nil?
      render :partial => "partials/error_message", 
             :locals => { 
                :msg => "It doesn't look like there's anything like that around here." 
              }
    elsif @item.takeable == false
      render :partial => "partials/error_message",
             :locals => {
                :msg => "You can't take that."
             }
    else
      @item.taken = true
      @item.save
      render layout: false
    end
  end
  
  def drop
    @inventory = Inventory.where(user_id: session[:current_user_id]).first
    @item = Item.where(name: params[:name], 
                        inventory_id: @inventory.id,
                        room_id: session[:room_id]).first
    if @item.nil?
      render :partial => "partials/error_message", 
             :locals => { 
                :msg => "It doesn't look like there's anything like that around here." 
              }
    elsif !@item.taken
      render :partial => "partials/error_message", 
             :locals => { 
                :msg => "You're not carrying that." 
              }
    else
      @item.taken = false
      @item.save
      render layout: false
    end
  end
end
