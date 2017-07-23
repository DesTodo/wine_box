class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :username
      t.text :password_digest
      t.integer :role
      t.text :first_name
      t.text :last_name
      t.integer :zipcode
      t.integer :age

      t.timestamps
    end
  end
end
