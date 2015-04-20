class AddRequestIdToObRequests < ActiveRecord::Migration
  def change
  	remove_column :ob_requests, :request_id, :integer
    add_column :ob_requests, :request_id, :integer
    add_foreign_key :ob_requests, column: :request_id
  end
end
