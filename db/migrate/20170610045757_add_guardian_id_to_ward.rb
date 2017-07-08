class AddGuardianIdToWard < ActiveRecord::Migration[5.1]
  def change
    add_column :wards, :guardian_id, :integer
  end
end
