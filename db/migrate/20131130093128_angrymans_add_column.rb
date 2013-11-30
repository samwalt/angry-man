class AngrymansAddColumn < ActiveRecord::Migration
  def change
	  add_column :angrymen, :workflow_state, :string
	  add_column :angrymen, :issue_key, :string
  end
end
