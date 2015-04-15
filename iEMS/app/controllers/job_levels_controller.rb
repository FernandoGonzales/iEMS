class JobLevelsController < ApplicationController
	def index
		#sortBy: 'level'
		sortBy = params[:sortBy]

		puts "======"
		puts sortBy
		puts "======"
		
		case sortBy
		#when 'level'
		#	@jobLevels = JobLevel.all.sort_by {|j| [j.level, j.grade, j.rank]}
		when 'grade'
			@jobLevels = JobLevel.all.sort_by {|j| [Integer(j.grade), Integer(j.level), j.rank]}
		when 'rank'
			@jobLevels = JobLevel.all.sort_by {|j| [j.rank, Integer(j.level), Integer(j.grade)]}
		else
			@jobLevels = JobLevel.all.sort_by {|j| [Integer(j.level), Integer(j.grade), j.rank]}
		end
		puts sortBy
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
			redirect_to job_levels_path, notice: 'FAILED:Adding of new job level failed.'
		end
	end

	def update
		@jobLevel = JobLevel.find(params[:id])

		if @jobLevel.update(level_params)
			redirect_to job_levels_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to job_levels_path, notice: 'FAILED:Update failed'
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
