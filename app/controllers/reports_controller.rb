class ReportsController < ApplicationController
	
	before_action :get_report, only: [:show, :edit, :update, :destroy]
	before_action :get_current_user

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
			flash[:error] = "Please make sure that all fields are filled out."
			render :action => "new"
		end
	end

	def show
	end

	def edit
	end

	def update
		@report.update(report_params)
		redirect_to report_path(@report)
	end

	def destroy
		@report.destroy
		redirect_to "/#{@report.state.downcase}"
	end

	def alabama
		@reports = Report.where(:state => 'Alabama').order(updated_at: :desc).page params[:page]
	end

	def alaska
		@reports = Report.where(:state => 'Alaska').order(updated_at: :desc).page params[:page]
	end

	private

	def get_report
		@report = Report.find(params[:id])
	end

	def get_current_user
		@current_user = current_user
	end

	def report_params
		params.require(:report).permit([:state, :person, :content])
	end
end