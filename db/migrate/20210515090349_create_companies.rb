class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :email
      t.text :about
      t.timestamps
    end
  end
end
