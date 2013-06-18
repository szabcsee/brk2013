class AddAmountToPayment < ActiveRecord::Migration
  def self.up
  	add_column :payments, :amount, :integer
  end

  def self.down
  	remove_column :payments, :amount
  end
end
