class JobLevel < ActiveRecord::Base
	validates :rank, presence: true, length: {minimum: 2}
	validates :level, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
	validates :grade, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
