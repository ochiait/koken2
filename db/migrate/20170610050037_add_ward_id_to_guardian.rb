class AddWardIdToGuardian < ActiveRecord::Migration[5.1]
  def change
    add_column :guardians, :ward_id, :integer
  end
end
