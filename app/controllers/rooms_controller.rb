class RoomsController < ApplicationController
    def show
        room = Room.where(id: params[:id]).first
        @itemsInRoom = unless room.nil?
            Item.where("id = ?", room.read_attribute(:id))
        else
            []
        end
    end
end
