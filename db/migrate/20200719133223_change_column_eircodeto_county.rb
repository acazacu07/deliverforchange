class ChangeColumnEircodetoCounty < ActiveRecord::Migration[5.0]
  def change
    rename_column :charities, :eircode, :county
  end
end
