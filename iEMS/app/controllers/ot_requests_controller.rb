class OtRequestsController < ApplicationController
	def index
		@otRequests = OtRequest.all
		@requests = Request.all
	end

	def show
		@request = Request.find(params[:id])
	end

	def new
		@request = Request.new
		@request.build_ot_request
	end

	def edit
		@request = Request.find(params[:id])
	end

	def create
	
		@request = Request.new(req_params)

		if @request.save
			redirect_to ot_requests_path, notice: 'SUCCESS:Overtime request has been added successfully!'
		else
			redirect_to ot_requests_path, notice: 'FAILED:Adding of new overtime request failed.'
		end
	end

	def update
		@request = Request.find(params[:id])
	
		if @request.update(req_params)
			redirect_to ot_requests_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to ot_requests_path, notice: 'FAILED:Update failed!'
		end
	end

	def destroy
		@request = Request.find(params[:id])
		@request.destroy
		redirect_to ot_requests_path, notice: 'SUCCESS:Overtime request deleted!'
	end

	private
	def req_params
		params.require(:request).permit(:description, :request_type, :status, ot_request_attributes:[:ot_date, :time_start, :time_end])
	end
end
