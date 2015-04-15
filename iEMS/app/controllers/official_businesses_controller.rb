class OfficialBusinessesController < ApplicationController
	def index
		@officialBusinesses = OfficialBusiness.all
		@officialBusiness = OfficialBusiness.new
	end
	def new
		@officialBusiness = OfficialBusiness.new
	end
	def edit
		@officialBusiness = OfficialBusiness.find(params[:id])
	end
	def create
		@officialBusiness = OfficialBusiness.new(official_business_params)

		if @officialBusiness.save
			redirect_to official_businesses_path, notice: 'SUCCESS:Official Business has been added successfully!'
		else
			redirect_to official_businesses_path, notice: 'FAILED:Adding of new official business failed.'
		end
	end
	def update
		@officialBusiness = OfficialBusiness.find(params[:id])

		if @officialBusiness.update(level_params)
			redirect_to official_businesses_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to official_businesses_path, notice: 'FAILED:Update failed'
		end
	end

	def destroy
		@officialBusiness = OfficialBusiness.find(params[:id])
		@officialBusiness.destroy
		redirect_to official_businesses_path, notice: 'SUCCESS:Official Business deleted!'
	end
	def official_business_params
		params.require(:official_business).permit(:client, :dateStart, :dateEnd, :timeDeparture, :timeArrival, :timeDuration)
	end
end
