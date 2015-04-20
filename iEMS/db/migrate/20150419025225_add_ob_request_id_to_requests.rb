class AddObRequestIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :user_id, :integer
  end
end
