class ChangeNotnullToVisits < ActiveRecord::Migration[5.1]
  def change
  	change_column :visits, :activity_id, :integer, null: false
		change_column :visits, :content_id, :integer, null: false
  end
end
