class Room < ApplicationRecord
  has_many :bookings, dependent: :destroy

  def self.find_title(i)
    if i = 0 
      then "Private Room's" 
    elsif i = 1 
      then "2 Bed Dorm's" 
    elsif i = 2 
      then "4 Bed Dorm's" 
    elsif i = 3 
      then "8 Bed Dorm's" 
    end 
  end
end
