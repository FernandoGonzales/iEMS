class CreateJobTitles < ActiveRecord::Migration
  def up
    create_table :job_titles do |t|
      t.string :title
      t.datetime :date_created
      t.text :description

      t.timestamps null: false
    end
  end

  def down
  	drop_table :job_titles
  end
end
