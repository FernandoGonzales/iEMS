class RemoveDatecreatedInJobtitle < ActiveRecord::Migration
  def up
  	remove_column :job_titles, :date_created
  end
end
