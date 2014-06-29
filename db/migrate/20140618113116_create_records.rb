class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :description
      t.string :status, limit: 10
      t.integer :case_id
      t.timestamps
    end
  end
end
