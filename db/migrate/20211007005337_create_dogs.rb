class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.integer :age
      t.string :username, null: false
      t.string :owner_name
      t.string :breed
      t.string :size
      t.string :color
      t.integer :weight
      t.string :favorite_food
      t.string :favorite_fire_hydrant
      t.timestamps
    end
    add_index :dogs, :username, unique: true
  end
end
