class RoomsController < ApplicationController
    def show
        @room = Room.where(id: params[:id]).first
    end
end
