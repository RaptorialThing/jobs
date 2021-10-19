class CreateEmployers < ActiveRecord::Migration[6.1]
  def change
    create_table :employers do |t|

      t.timestamps
    end
  end
end
