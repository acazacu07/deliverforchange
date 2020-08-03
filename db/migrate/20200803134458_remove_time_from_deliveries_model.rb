class RemoveTimeFromDeliveriesModel < ActiveRecord::Migration[5.0]
  def change
       remove_column :deliveries, :start_time
  end
end
