class AddGothsTable < ActiveRecord::Migration
  def self.up
  	create_table :goths do |t|
		t.string :name, :null => false
	end
  end

  def self.down
  	drop_table :goths
  end
end
