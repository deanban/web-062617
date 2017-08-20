class CreateBarBartenders < ActiveRecord::Migration[5.1]
  def change
    create_table :bar_bartenders do |t|
      t.integer :bar_id
      t.integer :bartender_id
      t.references :bar, foreign_key: true
      t.references :bartender, foreign_key: true

      t.timestamps
    end
  end
end
