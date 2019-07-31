class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.string :address_first_line
      t.string :address_second_line
      t.string :address_post_code
      t.string :address_city
      t.string :address_country
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
