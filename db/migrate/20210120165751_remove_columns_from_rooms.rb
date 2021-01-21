class RemoveColumnsFromRooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :booking_id
  end
end
