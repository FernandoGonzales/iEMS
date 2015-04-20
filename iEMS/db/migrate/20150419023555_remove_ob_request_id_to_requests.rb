class RemoveObRequestIdToRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :ob_request_id, :integer
    remove_column :requests, :user_id, :integer
    remove_column :ob_requests, :request_id, :integer
  end
end
