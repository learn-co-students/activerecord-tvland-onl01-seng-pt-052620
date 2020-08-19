class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      #t.string :catchphrase
      t.string :name
      t.string :actor_id #both actor (actor_id) & show(show_id) are foreign keys
      t.string :show_id #can use reference instead of integer
    end
  end
end
