class AddPhoneNumberToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :number, :string
  end
end
