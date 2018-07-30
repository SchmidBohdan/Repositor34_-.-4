class CreateCategories < ActiveRecord::Migration[5.1]
  def change

    #drop_table :categories

    create_table :categories do |t|
      t.string :title
      t.timestamps
    end
  end
end
