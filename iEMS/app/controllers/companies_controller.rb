class CompaniesController < ApplicationController
	def index
		@companies = Company.all
		#@company = Company.new
	end

	def show
		@company = Company.find(params[:id])
	end

	def new
		@company = Company.new
	end

	def edit
		@company = Company.find(params[:id])
	end

	def create
		@company = Company.new(company_params)
	
		if @company.save
			redirect_to companies_path, notice: 'SUCCESS:Company successfully created!'
		else
			redirect_to companies_path, notice: 'FAILED:Adding of New Company failed.'
		end
	end

	def update
		@company = Company.find(params[:id])

		if @company.update(company_params)
			redirect_to companies_path, notice: 'SUCCESS:Update success!'
		else
			redirect_to companies_path, notice: 'FAILED:Update failed.'
		end
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to companies_path, notice: 'SUCCESS:Company successfully deleted!'
	end

	private
	def company_params
		params.require(:company).permit(:name, :add_street, :add_city, :add_zip, :num)
	end
end
