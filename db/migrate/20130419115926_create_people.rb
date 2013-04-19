class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :second_name
      t.string :home_country
      t.string :phone_number
      t.string :email_address
      t.string :price_method
      t.string :price_category
      t.string :payment
      t.string :child_care
      t.string :child_age
      t.string :child_language
      t.string :reference_number

      t.timestamps
    end
  end
end
