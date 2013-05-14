class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :food_type
      t.date :first_day
      t.integer :first_day_meal_type
      t.date :second_day
      t.integer :second_day_meal_type
      t.date :third_day
      t.integer :third_day_meal_type
      t.date :fourth_day
      t.integer :fourth_day_meal_type
      t.date :fifth_day
      t.integer :fifth_day_meal_type
      t.date :sixth_day
      t.integer :sixth_day_meal_type
      t.date :seventh_day
      t.integer :seventh_day_meal_type
      t.references :user

      t.timestamps
    end
    add_index :meals, :user_id
  end
end
