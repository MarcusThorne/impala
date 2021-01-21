class AddColumnToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :room_number, :integer
  end
end
