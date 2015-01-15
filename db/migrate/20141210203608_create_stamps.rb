class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.integer :type_id
      t.integer :location_id
      t.integer :grouping_id
      t.string :scott_number
      t.integer :num_items
      t.integer :num_in_items
      t.string :face_value
      t.string :year_issued
      t.text :description
      t.string :location_type_name
      t.string :location_type_num
      t.integer :num_used
      t.string :scotts_used_value
      t.integer :num_mint
      t.string :scotts_mint_value
      t.date :date_lastr_viewed
      t.text :comments

      t.timestamps
    end
  end
end
