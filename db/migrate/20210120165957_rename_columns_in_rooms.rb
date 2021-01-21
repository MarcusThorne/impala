class RenameColumnsInRooms < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :type, :name
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
