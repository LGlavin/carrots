class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :quantity
      t.string :size

      t.timestamps
    end
  end
end
