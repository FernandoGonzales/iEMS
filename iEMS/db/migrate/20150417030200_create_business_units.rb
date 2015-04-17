class CreateBusinessUnits < ActiveRecord::Migration
  def change
    create_table :business_units do |t|
      t.string :name
      t.integer :supervisor_id
      t.integer :report_to
      t.integer :oic
      t.text :description

      t.timestamps null: false
    end
  end
end
