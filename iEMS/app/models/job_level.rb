class JobLevel < ActiveRecord::Base
	has_many :job_titles, dependent :destroy #Once a job level is destroyed, all job titles under it are also destroyed
	validates :rank, presence: true, length: {minimum: 2} #Rank is a required attribute, with at least 2 characters
	validates :level, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1} #Level is a required attribute for job level. Only integers are allowed and has to be greater than or equal to 1
	validates :grade, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1} #Grade is a required attribute for job level. Only integers are allowed and has to be greater than or equal to 1
end
