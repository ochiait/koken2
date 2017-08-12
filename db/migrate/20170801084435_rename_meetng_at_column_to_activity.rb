class RenameMeetngAtColumnToActivity < ActiveRecord::Migration[5.1]
  def change
  	rename_column :activities, :meetng_at, :meeting_at
  end
end
