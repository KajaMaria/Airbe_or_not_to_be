class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
