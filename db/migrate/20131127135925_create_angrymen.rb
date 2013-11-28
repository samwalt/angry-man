class CreateAngrymen < ActiveRecord::Migration
  def change
    create_table :angrymen do |t|
      t.string :nick

      t.timestamps
    end
    add_index :angrymen, :nick, unique: true
  end
end
