class CreateUsers < ActiveRecord::Migration[5.1]
  def change

    #drop_table :users

    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :age
      t.timestamps
    end
  end
end
