class OfficialBusiness < ActiveRecord::Base
	validates :requestType, :dateFiled, :description, :client, :datetimeDeparture, :datetimeArrival, :timeDuration, :presence => true
end
