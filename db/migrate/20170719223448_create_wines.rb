class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.text :name
      t.text :variety
      t.float :price
      t.text :designation
      t.text :maker
      t.text :description
      t.text :country
      t.integer :points
      t.text :nickname

      t.timestamps
    end
  end
end
