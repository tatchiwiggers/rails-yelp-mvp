class AddFoodToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :type, :string
  end
end
