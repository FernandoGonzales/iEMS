class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :add_street
      t.string :add_city
      t.string :add_zip
      t.string :num

      t.timestamps null: false
    end
  end
end
