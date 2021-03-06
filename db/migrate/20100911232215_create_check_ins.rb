class CreateCheckIns < ActiveRecord::Migration
  def self.up
    create_table :check_ins do |t|
      t.string :status
      t.belongs_to :location #to db - create reference location_id to location
      t.timestamps
    end
    add_index :check_ins, :location_id
  end

  def self.down
    drop_table :check_ins
  end
end
