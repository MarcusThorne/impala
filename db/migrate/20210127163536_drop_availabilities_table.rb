class DropAvailabilitiesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :availabilities
  end
end
