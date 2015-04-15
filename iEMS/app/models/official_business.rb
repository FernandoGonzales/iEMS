class OfficialBusiness < ActiveRecord::Base
	validates :client, :dateStart, :dateEnd, :timeDeparture, :timeArrival, :timeDuration, :presence => true
end
