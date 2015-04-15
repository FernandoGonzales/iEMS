class CreateOfficialBusinesses < ActiveRecord::Migration
  def change
    create_table :official_businesses do |t|
      t.string :client
      t.string :dateStart
      t.string :dateEnd
      t.string :timeDeparture
      t.string :timeArrival
      t.integer :timeDuration

      t.timestamps null: false
    end
  end
end
