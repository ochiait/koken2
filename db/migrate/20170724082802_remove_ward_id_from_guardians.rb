class RemoveWardIdFromGuardians < ActiveRecord::Migration[5.1]
  def change
    remove_column :guardians, :ward_id, :string
  end
end
