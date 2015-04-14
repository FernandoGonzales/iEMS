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
			redirect_to @jobTitle
		else
			render 'new'
		end
	end

	def update
		@jobTitle = JobTitle.find(params[:id])
	
		if @jobTitle.update(title_params)
			redirect_to @jobTitle
		else
			render 'edit' jobTitles_path
		end
	end

	def destroy
		@jobTitle = JobTitle.find(params[:id])
		@jobTitle.destroy
		redirect_to 
	end

	private
	def title_params
		params.require(:jobTitle).permit(:title, :rank, :level, :grade, :description)
	end
end
