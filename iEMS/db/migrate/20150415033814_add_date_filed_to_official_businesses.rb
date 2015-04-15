class AddDateFiledToOfficialBusinesses < ActiveRecord::Migration
  def change
    add_column :official_businesses, :dateFiled, :string
  end
end
