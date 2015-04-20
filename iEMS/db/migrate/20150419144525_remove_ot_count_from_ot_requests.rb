class RemoveOtCountFromOtRequests < ActiveRecord::Migration
  def change
  	remove_column :ot_requests, :ot_count, :string
  end
end
