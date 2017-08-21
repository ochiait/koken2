class AddWardIdToFamilies < ActiveRecord::Migration[5.1]
  def change
    add_column :families, :ward_id, :integer
  end
end
