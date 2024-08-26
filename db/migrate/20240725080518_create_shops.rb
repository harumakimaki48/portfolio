class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.time :opening_time
      t.time :closing_time
      t.string :holiday
      t.text :url

      t.timestamps
    end
  end
end
