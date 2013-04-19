class RichRelations < ActiveRecord::Migration
  def up
  	change_table :registrations do |t|
      t.references :person, :null => false
      t.references :program, :null => false
    end
      
    change_table :people do |t|
      t.references :registration
    end

    change_table :meals do |t|
      t.references :person, :null => false
    end
      
  end	

  def down
  	remove_column :registrations, :person_id
  	remove_column :registrations, :program_id
  	remove_column :people, :registration_id
    remove_column :meals, :person_id
  end

end
