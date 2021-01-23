class AvailabilitiesController < ApplicationController
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

    @privateRoom = @rooms.select { |r| r.name.downcase == 'private room' }
    @twoBedDorm = @rooms.select { |r| r.name.downcase == '2 bed dorm' }
    @fourBedDorm = @rooms.select { |r| r.name.downcase == '4 bed dorm' }
    @eightBedDorm = @rooms.select { |r| r.name.downcase == '8 bed dorm' }
    @allRooms = [{name: @privateRoom, title: 'Private Room'}, {name: @twoBedDorm, title: 'Two Bed Dorm'}, {name: @fourBedDorm, title: 'Four Bed Dorm'}, {name: @eightBedDorm, title: 'Eight Bed Dorm'}]
  end

  def search

  end
end
