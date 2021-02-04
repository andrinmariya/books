class CreateBookitems < ActiveRecord::Migration[6.0]
  def change
    create_table :bookitems do |t|
      t.string :bookname
      t.integer :price
      t.string :author

      t.timestamps
    end
  end
end
