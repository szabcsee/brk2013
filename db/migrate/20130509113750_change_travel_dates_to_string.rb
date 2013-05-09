class ChangeTravelDatesToString < ActiveRecord::Migration
  def up
   change_column :travels, :arrival, :string
   change_column :travels, :departure, :string
  end

  def down
   change_column :travels, :arrival, :datetime
   change_column :travels, :departure, :datetime
  end
end
