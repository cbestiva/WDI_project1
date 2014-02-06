class AddLatToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :lat, :float
  end
end
