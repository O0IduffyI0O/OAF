class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :client_name
      t.string :email
      t.string :mobile
      t.string :delivery_address
      t.string :postcode
      t.text :order_description
      t.text :comments
      t.timestamps
    end
  end
end
