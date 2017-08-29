class CreateGuardianContents < ActiveRecord::Migration[5.1]
  def change
    create_table :guardian_contents do |t|
      t.integer :guardian_id
      t.integer :content_id

      t.timestamps
    end
  end
end
