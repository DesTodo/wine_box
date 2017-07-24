class CreateJoinTableWinesWineLists < ActiveRecord::Migration[5.1]
  def change
    create_join_table :wine_lists, :wines do |t|
      t.index [:wine_id, :wine_list_id]
      t.index [:wine_list_id, :wine_id]
    end
  end
end
