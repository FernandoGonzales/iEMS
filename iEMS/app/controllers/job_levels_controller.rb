class JobLevelsController < ApplicationController
	def index
		@levels = JobLevel.all
	end

	def show
		@level = JobLevel.find(params[:id])
	end

	def new
		@level = JobLevel.new
	end

	def edit
		@level = JobLevel.find(params[:id])
	end

	def create
		@level = JobLevel.new(level_params)

		if @level.save
			redirect_to new_job_level_path, notice: 'Job level has been added successfully!'
		else
			render 'new', notice: 'Adding of new job level failed.'
		end
	end

	def update
		@level = JobLevel.find(param[:id])

		if @level.update(level_params)
			redirect_to job_levels_path, notice: 'Update success!'
		end
	end

	def destroy
		@level = JobLevel.find(param[:id])
		@level.destroy
		redirect_to job_levels_path, notice: 'Job Level deleted!'
	end

	private
	def level_params
		params.require(:jobLevel).permit(:rank, :level, :grade)
	end
end
