class AddAttributeToEmployers < ActiveRecord::Migration[6.1]
  def change
    add_column :employers, :email,:string
    add_column :employers, :password_digest, :string
  end
end
