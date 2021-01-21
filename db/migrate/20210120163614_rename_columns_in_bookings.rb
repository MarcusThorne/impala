class RenameColumnsInBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :arrival_date, :check_in
    add_column :bookings, :check_out, :date
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
