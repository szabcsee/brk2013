class ChangeProgramModel < ActiveRecord::Migration
  def change
  add_column :programs, :price_full_eur, :integer
  add_column :programs, :price_discount_eur, :integer
  remove_column :programs, :price_member
  end
end
