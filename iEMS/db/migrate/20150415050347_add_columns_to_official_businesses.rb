class AddColumnsToOfficialBusinesses < ActiveRecord::Migration
  def change
    add_column :official_businesses, :datetimeDeparture, :datetime
    add_column :official_businesses, :datetimeArrival, :datetime
    add_column :official_businesses, :dateFiled, :date
  end
end
