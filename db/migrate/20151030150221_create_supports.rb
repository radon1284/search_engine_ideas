class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :support_name
      t.text :support_details

      t.timestamps null: false
    end
  end
end
