class CreateProducts < ActiveRecord::Migration[5.1]
  def change

    drop_table :products

    create_table :products do |t|
      t.string :title, :limit => 32, :null => false
      t.string :price
      t.integer :category_id
      t.integer :country_id
      t.timestamps
    end
  end
end
