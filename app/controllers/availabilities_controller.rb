class AvailabilitiesController < ApplicationController
  def index
    @booking = Booking.new

    if params[:guests].present?  
      @rooms = Room.select { |r| r.beds >= params[:guests].to_i }
    else
      @rooms = Room.all
    end
  end

  def search
    
  end
end
