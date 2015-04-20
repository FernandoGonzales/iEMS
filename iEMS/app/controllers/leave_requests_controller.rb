class LeaveRequestsController < ApplicationController
def index
		@leaveRequests = LeaveRequest.all
		@requests = Request.all
	end

	def show
		@request = Request.find(params[:id])
	end

	def new
		@request = Request.new
		@request.build_leave_request
	end

	def edit
		@request = Request.find(params[:id])
	end

	def create
	
		@request = Request.new(req_params)

		if @request.save
			redirect_to leave_requests_path, notice: 'SUCCESS:Leave request has been added successfully!'
		else
			redirect_to leave_requests_path, notice: 'FAILED:Adding of new leave request failed.'
		end
	end

	def update
		@request = Request.find(params[:id])
	
		if @request.update(req_params)
			redirect_to leave_requests_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to leave_requests_path, notice: 'FAILED:Update failed!'
		end
	end

	def destroy
		@request = Request.find(params[:id])
		@request.destroy
		redirect_to leave_requests_path, notice: 'SUCCESS:Leave request deleted!'
	end

	private
	def req_params
		params.require(:request).permit(:description, :request_type, :status, leave_request_attributes:[:leave_type, :date_start, :date_end])
	end
end
