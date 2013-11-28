class AddUniqIndexToAssistSystem < ActiveRecord::Migration
  def change
    add_index :assist_systems, :name, unique: true
  end
end
