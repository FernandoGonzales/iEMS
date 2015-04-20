class CreateObRequests < ActiveRecord::Migration
  def change
    create_table :ob_requests do |t|
      t.string :client
      t.string :branch
      t.datetime :datetime_departure
      t.datetime :datetime_arrival
      t.integer :request_id

      t.timestamps null: false
    end
  end
end
