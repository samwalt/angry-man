class CreateAssistSystemUsers < ActiveRecord::Migration
  def change
    create_table :assist_system_users do |t|
      t.string :username
      t.string :password
      t.string :base64key
      t.references :assist_system

      t.timestamps
    end

    add_index :assist_system_users, :assist_system_id
  end
end
