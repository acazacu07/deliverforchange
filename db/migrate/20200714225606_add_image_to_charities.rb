class AddImageToCharities < ActiveRecord::Migration[5.0]
  def change
    add_column :charities, :image, :string
  end
end
