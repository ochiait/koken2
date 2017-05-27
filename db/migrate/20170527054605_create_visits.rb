class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.integer :activity_id
      t.integer :content_id

      t.timestamps
    end
  end
end
