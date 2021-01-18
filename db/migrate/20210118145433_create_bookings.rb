class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :arrival_date
      t.string :arrival_time
      t.integer :nights
      t.integer :guests
      t.string :full_name

      t.timestamps
    end
  end
end
