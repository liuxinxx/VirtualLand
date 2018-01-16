class CreateLands < ActiveRecord::Migration[5.1]
  def change
    create_table :lands do |t|
      t.integer :user_id
      t.text :latlng

      t.timestamps
    end
  end
end
