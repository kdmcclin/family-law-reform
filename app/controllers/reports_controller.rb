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
			redirect_to reports_path
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

	us_states.each do |array|
    	state = array.first
    	define_method(state.downcase) do
    		if params[:search]
    			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
    		else
				@reports = Report.where(:state => "#{state}").order(updated_at: :desc).page params[:page]
			end
		end
	end

	private

	def get_report
		@report = Report.find(params[:id])
	end

	def report_params
		params.require(:report).permit([:state, :person, :content])
	end
end