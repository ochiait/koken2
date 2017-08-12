class RemoveContentFromActivities < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :content, :string
  end
end
