class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :type
      t.integer :beds
      t.integer :floor
      t.boolean :private_bathroom
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
