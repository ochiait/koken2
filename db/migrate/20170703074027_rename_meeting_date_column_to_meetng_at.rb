class RenameMeetingDateColumnToMeetngAt < ActiveRecord::Migration[5.1]
  def change
    rename_column :activities, :meeting_date, :meetng_at
  end
end
