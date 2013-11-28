class AddTypeToAssistSystem < ActiveRecord::Migration
  def change
    add_column :assist_systems, :type, :string
  end
end
