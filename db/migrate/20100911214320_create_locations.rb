class CreateLocations < ActiveRecord::Migration
  def self.up # for upgrading databases
    create_table :locations do |t|
      t.decimal :lat, :lng
      t.string :name
      t.timestamps
    end
    add_index :locations, [:lat, :lng]
  end

  def self.down # for downgrading databases
    drop_table :locations
  end
end
