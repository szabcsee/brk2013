class ChangeProgramPriceToDecimal < ActiveRecord::Migration
  def change
  change_column :programs, :price_full_eur, :decimal, :precision => 8, :scale => 2
  change_column :programs, :price_discount_eur, :decimal, :precision => 8, :scale => 2
  change_column :programs, :price_full, :decimal, :precision => 8, :scale => 2
  change_column :programs, :price_discount, :decimal, :precision => 5, :scale => 2
  end
end
