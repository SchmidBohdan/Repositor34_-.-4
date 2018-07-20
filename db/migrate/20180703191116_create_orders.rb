class CreateOrders < ActiveRecord::Migration[5.1]
  def change

    drop_table :orders

    create_table :orders do |t|

      t.string :deliveryAddress

      t.timestamps
    end
  end
end
