class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :comment
      t.integer :employee_id
      t.integer :case_id
      t.timestamps
    end
  end
end
