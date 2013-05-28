class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :program_name_hu
      t.string :program_name_en
      t.integer :price_full
      t.decimal :price_full_eur, :precision => 8, :scale => 2
      t.decimal :price_discount_eur, :precision => 8, :scale => 2
      t.integer :price_discount
      t.integer :exchange_rate
      t.datetime :event_date
      t.timestamps
    end
  end
end
