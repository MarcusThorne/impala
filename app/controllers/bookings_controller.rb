class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @rooms = Room.all
  end

  def create
    @booking = Booking.new(booking_params)
    @rooms = Room.all
    if @booking.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:full_name, :email, :check_in, :check_out, :guests, :arrival_time, :room_id)
  end
end
