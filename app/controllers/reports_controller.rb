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

		if @report.save
			redirect_to "/#{@report.state.downcase}"
		else
			redirect_to new_report_path
		end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def alabama
		@reports = Report.where(:state => 'Alabama')
	end

	def alaska
		@reports = Report.where(:state => 'Alaska')
	end

	private

	def get_report
		@report = Report.find(params[:id])
	end

	def report_params
		params.require(:report).permit([:state, :person, :content])
	end
end