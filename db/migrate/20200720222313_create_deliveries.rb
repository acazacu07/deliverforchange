class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.time :time
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
