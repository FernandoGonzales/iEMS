class ObRequestsController < ApplicationController
	def index
		@obRequests = ObRequest.all
		@requests = Request.all
	end

	def show
		@request = Request.find(params[:id])
	end

	def new
		@request = Request.new
		@request.build_ob_request
	end

	def edit
		@request = Request.find(params[:id])
		@obRequest = ObRequest.find(params[:request_id])
	end

	def create
	
		@request = Request.new(req_params)

		if @request.save
			redirect_to ob_requests_path, notice: 'SUCCESS:Official business has been added successfully!'
		else
			redirect_to ob_requests_path, notice: 'FAILED:Adding of new official business failed.'
		end
	end

	def update
		@request = Request.find(params[:id])
		@obRequest = ObRequest.find(params[:request_id])
	
		if @request.update(req_params)
			redirect_to ob_requests_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to ob_requests_path, notice: 'FAILED:Update failed!'
		end
	end

	def destroy
		@request = Request.find(params[:id])
		@request.destroy
		redirect_to ob_requests_path, notice: 'SUCCESS:Official Business deleted!'
	end

	private
	def req_params
		params.require(:request).permit(:description, :request_type, :status, ob_request_attributes:[:client, :branch, :datetime_departure, :datetime_arrival])
	end
end
