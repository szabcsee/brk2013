class AddIndexesToModels < ActiveRecord::Migration
  def change
  	add_index :people, :registration_id
  	add_column :people, :travel_id, :integer
  	add_index :people, :travel_id
  end
end
