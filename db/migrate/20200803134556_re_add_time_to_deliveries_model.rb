class ReAddTimeToDeliveriesModel < ActiveRecord::Migration[5.0]
  def change
    add_column :deliveries, :start_time, :timestampz
  end
end
