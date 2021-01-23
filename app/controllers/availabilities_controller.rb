class AvailabilitiesController < ApplicationController
  def index
    @booking = Booking.new

    if params[:check_in].present? && params[:check_out].present? && params[:guests].present?
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
    elsif params[:check_in].present? && params[:check_out].present?
      @rooms = Room.select do |r|
        guest_count = 0
        unless r.bookings.nil? do
          r.bookngs.each do |bk|
            guest_count += bk.guests
          end
        end
        r if (r.beds - guest_count) > 0
        end
      end
    elsif params[:guests].present?
      @rooms = Room.select do |r|
        guest_count = 0
        unless r.bookings.nil? do
          r.bookings.each do |bk|
            guest_count += bk.guests if bk.check_in == date.today && bk.check_out == date.tomorrow
          end
        end
        r if (r.beds - guest_count) >= params[:guests].to_i
        end
      end
    else
      @rooms = Room.all
    end

    @privateRoom = @rooms.select { |r| r.name.downcase == 'private room' }
    @twoBedDorm = @rooms.select { |r| r.name.downcase == '2 bed dorm' }
    @fourBedDorm = @rooms.select { |r| r.name.downcase == '4 bed dorm' }
    @eightBedDorm = @rooms.select { |r| r.name.downcase == '8 bed dorm' }
    @allRooms = [@privateRoom, @twoBedDorm, @fourBedDorm, @eightBedDorm]
  end

  def search

  end
end
