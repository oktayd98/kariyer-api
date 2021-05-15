class CreateConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :conditions do |t|
      t.integer :limit
      t.references :category, foreign_key: true
      t.references :job, foreign_key: true
      t.timestamps
    end
  end
end
