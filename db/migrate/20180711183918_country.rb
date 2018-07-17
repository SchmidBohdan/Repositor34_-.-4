class Country < ActiveRecord::Migration[5.1]
  def change
    add_column :countries, :title, :string
  end
end
