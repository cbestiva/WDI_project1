class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address
      t.string :day
      t.string :time

      t.timestamps
    end
  end
end
