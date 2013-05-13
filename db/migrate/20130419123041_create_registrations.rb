class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
   	  t.boolean :participate
      t.references :user, :null => false
      t.references :program, :null => false
      t.timestamps
    end
  end
end
