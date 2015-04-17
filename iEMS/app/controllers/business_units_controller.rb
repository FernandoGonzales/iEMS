class BusinessUnitsController < ApplicationController
	def index
		@business_units = BusinessUnit.all
	end

	def show
		@business_unit = BusinessUnit.find(params[:id])
	end

	def new
		@business_unit = BusinessUnit.new
	end

	def edit
		@business_unit = BusinessUnit.find(params[:id])
	end

	def create
		@business_unit = BusinessUnit.new(bu_params)

		if @business_unit.save
			redirect_to business_units_path, notice: 'SUCCESS:Business Unit successfully created!'
		else
			redirect_to business_units_path, notice: 'FAILED:Adding of Business Unit failed.'
		end
	end

	def update
		@business_unit = BusinessUnit.find(params[:id])

		if @business_unit.update(bu_params)
			redirect_to business_units_path, notice: 'SUCCESS:Update successful!'
		else
			redirect_to business_units_path, notice: 'FAILED: Update failed.'
		end
	end

	def destroy
		@business_unit = BusinessUnit.find(params[:id])
		@business_unit.destroy
		redirect_to business_units_path, notice: 'SUCCESS:Business Unit successfully deleted!'
	end

	private
	def bu_params
		params.require(:business_unit).permit(:name, :manager_id, :supervisor_id, :oic, :description)
	end
end
