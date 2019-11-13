class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :title
      t.integer :duration
      t.string :location
      t.text :description
      t.references :coder, foreign_key: true

      t.timestamps
    end
  end
end
