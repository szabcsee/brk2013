class RemoveChildFromPerson < ActiveRecord::Migration
  def up
		remove_column :people, :child_age
		remove_column :people, :child_care
		remove_column :people, :child_language 
  end

  def down
		add_column :people, :child_age, :integer
		add_column :people, :child_care, :string
		add_column :people, :child_language, :string
  end
end
