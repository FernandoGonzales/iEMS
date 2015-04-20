class CreateCreateLeaveRequests < ActiveRecord::Migration
  def change
    create_table :leave_requests do |t|
      t.string :leave_type
      t.date :date_start
      t.date :date_end
      t.integer :request_id

      t.timestamps null: false
    end
  end
end
