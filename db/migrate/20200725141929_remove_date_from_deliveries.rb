class RemoveDateFromDeliveries < ActiveRecord::Migration[5.0]
  def change
    remove_column :deliveries, :date, :date
  end
end
