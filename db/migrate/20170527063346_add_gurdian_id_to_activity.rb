class AddGurdianIdToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :guardian_id, :integer
    add_column :activities, :ward_id, :integer
  end
end
