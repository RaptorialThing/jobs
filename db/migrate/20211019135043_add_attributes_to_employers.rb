class AddAttributesToEmployers < ActiveRecord::Migration[6.1]
  def change
    add_column :employers, :first_name, :string
    add_column :employers, :last_name, :string
    add_column :employers, :patronymic, :string
    add_column :employers, :contact, :string
    add_column :employers, :balance, :integer
    add_column :employers, :is_posting_allow, :boolean
  end
end
