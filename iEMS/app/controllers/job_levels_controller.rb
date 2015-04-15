class JobLevelsController < ApplicationController
	def index
		@jobLevels = JobLevel.all
		@jobLevel = JobLevel.new
	end

	def show
		@jobLevel = JobLevel.find(params[:id])
	end

	def new
		@jobLevel = JobLevel.new
	end

	def edit
		@jobLevel = JobLevel.find(params[:id])
	end

	def create
		@jobLevel = JobLevel.new(level_params)

		if @jobLevel.save
			redirect_to job_levels_path, notice: 'SUCCESS:Job level has been added successfully!'
		else
			render 'new', notice: 'FAILED:Adding of new job level failed.'
		end
	end

	def update
		@jobLevel = JobLevel.find(params[:id])

		if @jobLevel.update(level_params)
			redirect_to job_levels_path, notice: 'SUCCESS:Update success!'
		else
			render 'edit', notice: 'FAILED:Update failed'
		end
	end

	def destroy
		@jobLevel = JobLevel.find(params[:id])
		@jobLevel.destroy
		redirect_to job_levels_path, notice: 'SUCCESS:Job Level deleted!'
	end

	private
	def level_params
		params.require(:job_level).permit(:rank, :level, :grade)
	end
end
