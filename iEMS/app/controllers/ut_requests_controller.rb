class UtRequestsController < ApplicationController
	def index
		@utRequests = UtRequest.all
		@requests = Request.all
	end

	def show
		@request = Request.find(params[:id])
	end

	def new
		@request = Request.new
		@request.build_ut_request
	end

	def edit
		@request = Request.find(params[:id])
		@request.build_ut_request
	end

	def create
		@request = Request.new(req_params)

		if @request.save
			redirect_to ut_requests_path, notice: 'SUCCESS:Undertime request has been added successfully!'
		else
			redirect_to ut_requests_path, notice: 'FAILED:Adding of new undertime request failed.'
		end
	end

	def update
		@request = Request.find(params[:id])
		if @request.update(req_params)
			redirect_to ut_requests_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to ut_requests_path, notice: 'FAILED:Update failed!'
		end
	end

	def destroy
		@request = Request.find(params[:id])
		@request.destroy
		redirect_to ut_requests_path, notice: 'SUCCESS:Undertime request deleted!'
	end

	private
	def req_params
		params.require(:request).permit(:description, :request_type, :status, ut_request_attributes:[:ut_date, :time_start, :time_end])
	end
end