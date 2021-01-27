class RoomsController < ApplicationController
  def index
    @booking = Booking.new
    querys = [params[:check_in], params[:check_out], params[:guests]]

    if querys.each.present?
      @rooms = Room.select do |r|
        guest_count = 0
        unless r.bookings.nil? do
          r.bookings.each do |bk|
            guest_count += bk.guests if bk.check_in >= params[:check_in].to_date && bk.check_out <= params[:check_out].to_date
          end
        end
        r if (r.beds - guest_count) >= params[:guests].to_i
        end
      end
    else
      @rooms = Room.all
    end

    @privateRoom = @rooms.select { |r| r.name.downcase == 'private room' }.first
    @twoBedDorm = @rooms.select { |r| r.name.downcase == '2 bed dorm' }.first
    @fourBedDorm = @rooms.select { |r| r.name.downcase == '4 bed dorm' }.first
    @eightBedDorm = @rooms.select { |r| r.name.downcase == '8 bed dorm' }.first
  end
  
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
