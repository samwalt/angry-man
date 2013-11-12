class CreateAssistSystems < ActiveRecord::Migration
  def change
    create_table :assist_systems do |t|
      t.string :name
      t.string :host
      t.string :port

      t.timestamps
    end
  end
end
