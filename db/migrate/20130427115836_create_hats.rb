class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string  :name
      t.string  :description
      t.decimal :price, precision: 6, scale: 2
      t.timestamps
    end
  end
end
