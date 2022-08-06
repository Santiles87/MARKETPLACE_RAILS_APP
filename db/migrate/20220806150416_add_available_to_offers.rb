class AddAvailableToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :available, :boolean, default: true
  end
end
