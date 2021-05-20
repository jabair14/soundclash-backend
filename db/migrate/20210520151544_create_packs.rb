class CreatePacks < ActiveRecord::Migration[6.1]
  def change
    create_table :packs do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :name
      t.string :description
      t.string :image
      t.string :preview
      t.string :link
      t.integer :price

      t.timestamps
    end
  end
end
