class OffsetRequestsController < ApplicationController
	def index
		@offsetRequests = OffsetRequest.all
		@requests = Request.all
	end

	def show
		@request = Request.find(params[:id])
	end

	def new
		@request = Request.new
		@request.build_offset_request
	end

	def edit
		@request = Request.find(params[:id])
	end

	def create
		@request = Request.new(req_params)

		if @request.save
			redirect_to offset_requests_path, notice: 'SUCCESS:Offset request has been added successfully!'
		else
			redirect_to offset_requests_path, notice: 'FAILED:Adding of new offset request failed.'
		end
	end

	def update
		@request = Request.find(params[:id])
	
		if @request.update(req_params)
			redirect_to offset_requests_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to offset_requests_path, notice: 'FAILED:Update failed!'
		end
	end

	def destroy
		@request = Request.find(params[:id])
		@request.destroy
		redirect_to offset_requests_path, notice: 'SUCCESS:Offset request deleted!'
	end

	private
	def req_params
		params.require(:request).permit(:description, :request_type, :status, offset_request_attributes:[:offset_date, :offset_count])
	end
end