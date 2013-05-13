class KillPolymorphicAssociation < ActiveRecord::Migration
  def up
     remove_column :meals, :eater_id
     remove_column :meals, :eater_type
     add_column :meals, :person_id, :integer
     add_index :meals, :person_id
  end

  def down
     remove_column :meals, :person_id
     references :meals, :eater, :polymorphic => true
     remove_index :meals, :person_id
  end
end
