class AddMeetingDateToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :meeting_date, :datetime
  end
end
