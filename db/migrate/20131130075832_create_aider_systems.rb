class CreateAiderSystems < ActiveRecord::Migration
  def change
    create_table :aider_systems do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :base64key
      t.references :system

      t.timestamps
    end

  end
end
