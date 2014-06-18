class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :content, limit: 20

      t.timestamps
    end
  end
end
