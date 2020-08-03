class ChangeDateFormatInDeliveries < ActiveRecord::Migration[5.0]
  def change
     change_column :deliveries, :start_time, :timestamp
  end
end
