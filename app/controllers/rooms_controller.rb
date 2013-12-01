class RoomsController < ApplicationController
    def show
        idMatches = Room.where(id: params[:id])
        return if idMatches.nil?
        room = idMatches.first
        @itemsInRoom = Item.where("id = ?", room.read_attribute(:id))
    end
end
