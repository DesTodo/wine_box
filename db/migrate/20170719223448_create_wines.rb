class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.text :name
      t.text :variety
      t.integer :price
      t.text :label
      t.text :maker
      t.text :description

      t.timestamps
    end
  end
end
