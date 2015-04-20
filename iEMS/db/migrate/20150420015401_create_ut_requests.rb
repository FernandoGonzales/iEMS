class CreateUtRequests < ActiveRecord::Migration
  def change
    create_table :ut_requests do |t|
      t.date :ut_date
      t.time :time_start
      t.time :time_end
      t.integer :request_id

      t.timestamps null: false
    end
  end
end
