class AddNameToEmployers < ActiveRecord::Migration[6.1]
  def change
    add_column :employers, :name, :string
    add_column :employers, :contact, :string
  end
end
