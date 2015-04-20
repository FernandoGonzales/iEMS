class RemoveTimeDurationFromOnRequests < ActiveRecord::Migration
  def change
    remove_column :ob_requests, :time_duration, :decimal
  end
end
