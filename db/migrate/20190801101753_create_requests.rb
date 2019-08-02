class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.belongs_to :user, index: true
      t.belongs_to :listing, index: true
      t.date :date
      t.string :message
      t.timestamps
    end
  end
end
