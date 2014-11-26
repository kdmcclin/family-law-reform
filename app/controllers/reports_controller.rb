class ReportsController < ApplicationController
	
	before_action :get_report, only: [:show, :edit, :update, :destroy]

	def index
		@reports = Report.all
	end

	def new
		@report = Report.new
	end

	def create
		@report = current_user.reports.new(report_params)
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def get_report
		@report = Report.find(params[:id])
	end

	def report_params
		params.require(:report).permit([:state, :person, :content])
	end
end