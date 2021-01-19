class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @options = [{ title: 'Check-In', date: '10/10/12' }, { title: 'Check-Out', date: '10/10/12' }, { title: 'Adults', date: '1 Adult' }, { title: 'Children', date: '0 Children' }]
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
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
    params.require(:booking).permit(:full_name, :email, :check_in, :check_out, :guests, :arrival_time)
  end
end
