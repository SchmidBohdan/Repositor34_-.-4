class OrderAddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :deliveryAddress, :string
  end
end
