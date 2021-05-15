class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :desc
      t.integer :type
      t.references :company, foreign_key: true
      t.references :city, foreign_key: true
      t.timestamps
    end
  end
end
