class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :rate_hour
      t.integer :workmans_count
      t.string :contact

      t.timestamps
    end
  end
end
