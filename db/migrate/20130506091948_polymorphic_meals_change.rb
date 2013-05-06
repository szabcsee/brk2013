class PolymorphicMealsChange < ActiveRecord::Migration
  def up
  	change_table :meals do |t|
     t.references :eater, :polymorphic => true
     t.remove_references :person
   end
  end

  def down
  	change_table :meals do |t|
     t.remove_references :eater, :polymorphic => true
     t.references :person
   end
  end
end
