class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, limit: 10
      t.string :password_digest
      t.string :post, limit: 8
      t.string :cname, limit: 10
      t.string :phone, limit: 14
      t.string :idcard, limit: 20
      t.string :comment

      t.timestamps
    end
  end
end
