class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.string :name
      t.string :email
      t.string :tel

      t.timestamps
    end
  end
end
