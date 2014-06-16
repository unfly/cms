class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :work
      t.string :relation
      t.string :cname
      t.string :ename
      t.string :gender
      t.date :birthday
      t.integer :school_id
      t.integer :employee_id
      t.integer :record_id
      t.integer :source_id
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end
