class RemoveEmailFromEmployer < ActiveRecord::Migration[6.1]
  def change
    remove_column :employers, :email, :string
    remove_column :employers, :contact, :string
  end
end
