class CreateOtRequests < ActiveRecord::Migration
  def change
    create_table :ot_requests do |t|
      t.date :ot_date
      t.time :time_start
      t.time :time_end
      t.string :ot_count
      t.integer :request_id

      t.timestamps null: false
    end
  end
end
