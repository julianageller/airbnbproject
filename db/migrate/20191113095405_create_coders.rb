class CreateCoders < ActiveRecord::Migration[5.2]
  def change
    create_table :coders do |t|
      t.string :name
      t.string :language
      t.string :location
      t.integer :price
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
