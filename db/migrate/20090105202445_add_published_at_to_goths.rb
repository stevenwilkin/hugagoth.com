class AddPublishedAtToGoths < ActiveRecord::Migration
  def self.up
  	change_table :goths do |t|
		t.datetime :published_at
	end
  end

  def self.down
  	change_table :goths do |t|
		t.remove :published_at
	end
  end
end
