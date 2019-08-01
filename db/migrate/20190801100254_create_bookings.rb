class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :listing, index: true
      t.date :date
      t.boolean :availability

      t.timestamps
    end
  end
end
