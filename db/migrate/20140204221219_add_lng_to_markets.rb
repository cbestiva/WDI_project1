class AddLngToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :lng, :float
  end
end
