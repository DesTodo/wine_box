class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :username
      t.integer :role, default: 1, null: false
      t.text :password_digest

      t.timestamps
    end
  end
end
