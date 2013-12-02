class StaticPagesController < ApplicationController
  def intro
		if session[:room_id] == nil
			session[:room_id] = 0
		end
  end
end
