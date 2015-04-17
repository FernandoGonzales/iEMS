class JobTitlesController < ApplicationController

	def index
		@jobTitles = JobTitle.all
	end

	def show
		@jobTitle = JobTitle.find(params[:id])
	end

	def new
		@jobTitle = JobTitle.new
	end

	def edit
		@jobTitle = JobTitle.find(params[:id])
	end

	def create
	
		@jobTitle = JobTitle.new(title_params)

		if @jobTitle.save
			redirect_to job_titles_path, notice: 'SUCCESS:Job title has been added successfully!'
		else
			redirect_to job_titles_path, notice: 'FAILED:Adding of new job title failed.'
		end
	end

	def update
		@jobTitle = JobTitle.find(params[:id])
	
		if @jobTitle.update(title_params)
			redirect_to job_titles_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to job_titles_path, notice: 'FAILED:Update failed.!'
		end
	end

	def destroy
		@jobTitle = JobTitle.find(params[:id])
		@jobTitle.destroy
		redirect_to job_titles_path, notice: 'SUCCESS:Job title deleted!'
	end

	private
	def title_params
		params.require(:job_title).permit(:title, :description)
	end
end
