class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.date :meal_date
      t.string :food_type
      t.integer :meal_type
      t.references :user, :null => false
      t.timestamps
    end
  end
end
