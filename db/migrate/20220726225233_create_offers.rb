class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :product_name
      t.float :price
      t.string :description
      t.text :image
      t.text :location

      t.timestamps
    end
  end
end
