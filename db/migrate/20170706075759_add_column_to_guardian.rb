class AddColumnToGuardian < ActiveRecord::Migration[5.1]
  def change
    add_column :guardians, :company_name, :string
    add_column :guardians, :last_name, :string
    add_column :guardians, :first_name, :string
    add_column :guardians, :last_name_kana, :string
    add_column :guardians, :first_name_kana, :string
    add_column :guardians, :zip, :string
    add_column :guardians, :pref, :string
    add_column :guardians, :city, :string
    add_column :guardians, :addr1, :string
    add_column :guardians, :addr2, :string
    add_column :guardians, :tel, :string
    add_column :guardians, :mobile, :string
    add_column :guardians, :url, :string
  end
end
