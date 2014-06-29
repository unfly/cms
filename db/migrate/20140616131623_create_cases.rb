class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name, limit: 10
      t.string :phone, limit: 20
      t.string :address
      t.string :work, limit: 20
      t.string :relation, limit: 8
      t.string :cname, limit: 10
      t.string :ename, limit: 20
      t.string :gender, limit: 8
      t.date :birthday
      t.integer :school_id
      t.integer :employee_id
      t.integer :source_id
      t.string :comment

      t.timestamps
    end
  end
end
