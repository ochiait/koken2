class AddStatusToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :status, :integer
  end
end