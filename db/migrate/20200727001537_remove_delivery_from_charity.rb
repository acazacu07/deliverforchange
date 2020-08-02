class RemoveDeliveryFromCharity < ActiveRecord::Migration[5.0]
  def change
    remove_reference :charities, :delivery, foreign_key: true
  end
end
