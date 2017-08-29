class CreateGuradianContents < ActiveRecord::Migration[5.1]
  def change
    create_table :guradian_contents do |t|
      t.string :guardian_id
      t.string :content_id

      t.timestamps
    end
  end
end
