class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :broker_name
      t.text :broker_details
      t.integer :locations
      t.integer :product_id
      t.text :office_hour
      t.integer :support
      t.integer :trading_functionality
      t.integer :features

      t.timestamps null: false
    end
  end
end
