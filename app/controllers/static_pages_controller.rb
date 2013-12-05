class StaticPagesController < ApplicationController
    def intro
        if session[:room_id] == nil
        	session[:room_id] = 1
        end
    end
end
