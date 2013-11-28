class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.string :type
      t.text :description
      t.references :angryman, index: true

      t.timestamps
    end
    add_index :systems, :name, unique: true
  end
end
