class RoomsController < ApplicationController
  def new
    @rooms = Room.new
  end

  def create
    @room = Rooms.new(rooms_params)
    if @room.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def rooms_params
    params.require(:room).permit(:full_name, :email, :check_in, :check_out, :guests, :arrival_time)
  end
end
