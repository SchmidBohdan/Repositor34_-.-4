class OrderCreate < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :title
      t.timestamps
      end
   end
end
