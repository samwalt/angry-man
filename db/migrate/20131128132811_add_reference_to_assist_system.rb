class AddReferenceToAssistSystem < ActiveRecord::Migration
  def change
    add_reference :assist_systems, :angryman, index: true
  end
end
