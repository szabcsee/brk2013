class ChangeChildAge < ActiveRecord::Migration
  def up
	change_table :people do |t|
		t.change :child_age, :integer 
	end
  end

  def down
	change_table :people do |t|
		t.change :child_age, :string
	end
  end
end
