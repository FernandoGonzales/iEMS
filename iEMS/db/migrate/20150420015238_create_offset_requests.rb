class CreateOffsetRequests < ActiveRecord::Migration
  def change
    create_table :offset_requests do |t|
      t.date :offset_date
      t.decimal :offset_count
      t.integer :request_id

      t.timestamps null: false
    end
  end
end
