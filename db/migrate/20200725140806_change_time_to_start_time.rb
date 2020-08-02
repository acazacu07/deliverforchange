class ChangeTimeToStartTime < ActiveRecord::Migration[5.0]
  def change
    rename_column :deliveries, :time, :start_time
  end
  
end
