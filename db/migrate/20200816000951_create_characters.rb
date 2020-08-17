class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :catchphrase
      t.string :name
      t.references :actor 
      t.references :show
    end
  end
end
