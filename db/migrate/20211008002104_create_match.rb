class CreateMatch < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :match_1_id, null: false
      t.integer :match_2_id, null: false
    end
    add_index :matches, :match_1_id
    add_index :matches, :match_2_id
    add_index :matches, [:match_1_id, :match_2_id], unique: true
  end
end
