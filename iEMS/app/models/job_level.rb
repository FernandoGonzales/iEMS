class JobLevel < ActiveRecord::Base
	validates :rank, presence: true
	validates :level, presence: true
	validates :grade, presence: true
end
