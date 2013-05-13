class KillPolymorphicPersonChild < ActiveRecord::Migration
  def up
     remove_column :people, :eater_id
     remove_column :people, :eater_type
     add_column :people, :meal_id, :integer
     add_index :people, :meal_id
     remove_column :children, :eater_id
     remove_column :children, :eater_type
  end

  def down
     remove_column :people, :meal_id
     references :people, :eater, :polymorphic => true
     remove_index :people, :meals
     references :children, :eater, :polymorphic => true
  end
end
