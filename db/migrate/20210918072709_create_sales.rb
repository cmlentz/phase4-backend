class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.belongs_to :shop, null: false, foreign_key: true
      t.belongs_to :animal, null: false, foreign_key: true
      t.integer :priority

      t.timestamps
    end
  end
end
