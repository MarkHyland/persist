class CreatePersons < ActiveRecord::Migration
  def change
  	create_table "people" do |t|
  		t.string "name"
  		t.integer "wins", default: 0
  		t.integer "losses", default: 0
  		t.integer "ties", default: 0
  	end
  end
end