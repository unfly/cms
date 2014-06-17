class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, limit: 10
      t.string :address
      t.string :contacts, limit: 8
      t.string :phone, limit: 12
      t.string :comment

      t.timestamps
    end
  end
end
