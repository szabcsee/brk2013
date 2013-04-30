class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.string :language
      t.boolean :child_care
      t.references :person

      t.timestamps
    end
    add_index :children, :person_id
  end
end
