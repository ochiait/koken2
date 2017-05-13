class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :content
      t.string :memo
      t.string :comment
      t.string :photo

      t.timestamps
    end
  end
end
