class ChangeColumnTypeStartTime < ActiveRecord::Migration[5.0]
  def change
    change_column:deliveries, :start_time, :datetime
  end
end
