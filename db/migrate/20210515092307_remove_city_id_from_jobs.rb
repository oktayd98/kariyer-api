class RemoveCityIdFromJobs < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :city_id
  end
end
