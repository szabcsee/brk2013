class FixProgramPriceNumbers < ActiveRecord::Migration
  def change
  change_column :programs, :price_full_eur, :decimal, :precision => 8, :scale => 2
  change_column :programs, :price_discount_eur, :decimal, :precision => 8, :scale => 2
  change_column :programs, :price_full, :integer
  change_column :programs, :price_discount, :integer
  end
end
