class Products < ActiveRecord::Migration[6.1]
  
  def self.up
    create_table :products do |t|
      t.string :title, null: false
      t.decimal :price, precision: 15, scale: 2, default: 0
      t.integer :category_id
      t.text :description
      
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
