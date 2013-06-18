class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.datetime :date
      t.string :comment
      t.references :user

      t.timestamps
    end
    add_index :payments, :user_id
  end
end
