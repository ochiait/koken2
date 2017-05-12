class CreateWards < ActiveRecord::Migration[5.1]
  def change
    create_table :wards do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.integer :sex

      t.timestamps
    end
  end
end
