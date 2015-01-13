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

	def arizona
		@reports = Report.where(:State => 'Arizona').order(updated_at: :desc).page params[:page]
	end

	def arkansas
		@reports = Report.where(:state => 'Arkansas').order(updated_at: :desc).page params[:page]
	end

	def california
		@reports = Report.where(:state => 'California').order(updated_at: :desc).page params[:page]
	end

	def colorado
		@reports = Report.where(:state => 'Colorado').order(updated_at: :desc).page params[:page]
	end
	
	def connecticut
		@reports = Report.where(:state => 'Connecticut').order(updated_at: :desc).page params[:page]
	end

	def dc
		@reports = Report.where(:state => 'District of Columbia').order(updated_at: :desc).page params[:page]
	end

	def delaware
		@reports = Report.where(:state => 'Delaware').order(updated_at: :desc).page params[:page]
	end

	def florida
		@reports = Report.where(:state => 'Florida').order(updated_at: :desc).page params[:page]
	end

	def georgia
		@reports = Report.where(:state => 'Georgia').order(updated_at: :desc).page params[:page]
	end

	def hawaii
		@reports = Report.where(:state => 'Hawaii').order(updated_at: :desc).page params[:page]
	end

	def idaho
		@reports = Report.where(:state => 'Idaho').order(updated_at: :desc).page params[:page]
	end

	def illinois
		@reports = Report.where(:state => 'Illinois').order(updated_at: :desc).page params[:page]
	end

	def indiana
		@reports = Report.where(:state => 'Indiana').order(updated_at: :desc).page params[:page]
	end

	def iowa
		@reports = Report.where(:state => 'Iowa').order(updated_at: :desc).page params[:page]
	end

	def kansas
		@reports = Report.where(:state => 'Kansas').order(updated_at: :desc).page params[:page]
	end

	def kentucky
		@reports = Report.where(:state => 'Kentucky').order(updated_at: :desc).page params[:page]
	end

	def louisiana
		@reports = Report.where(:state => 'Louisiana').order(updated_at: :desc).page params[:page]
	end

	def maine
		@reports = Report.where(:state => 'Maine').order(updated_at: :desc).page params[:page]
	end

	def maryland
		@reports = Report.where(:state => 'Maryland').order(updated_at: :desc).page params[:page]
	end

	def massachusetts
		@reports = Report.where(:state => 'Massachusetts').order(updated_at: :desc).page params[:page]
	end

	def michigan
		@reports = Report.where(:state => 'Michigan').order(updated_at: :desc).page params[:page]
	end

	def minnesota
		@reports = Report.where(:state => 'Minnesota').order(updated_at: :desc).page params[:page]
	end

	def mississippi
		@reports = Report.where(:state => 'Mississippi').order(updated_at: :desc).page params[:page]
	end

	def missouri
		@reports = Report.where(:state => 'Missouri').order(updated_at: :desc).page params[:page]
	end

	def montana
		@reports = Report.where(:state => 'Montana').order(updated_at: :desc).page params[:page]
	end
	
	def nebraska
		@reports = Report.where(:state => 'Nebraska').order(updated_at: :desc).page params[:page]
	end

	def nevada
		@reports = Report.where(:state => 'Nevada').order(updated_at: :desc).page params[:page]
	end

	def new_hampsire
		@reports = Report.where(:state => 'New Hampshire').order(updated_at: :desc).page params[:page]
	end

	def new_jersey
		@reports = Report.where(:state => 'New Jersey').order(updated_at: :desc).page params[:page]
	end

	def new_mexico
		@reports = Report.where(:state => 'New Mexico').order(updated_at: :desc).page params[:page]
	end

	def new_york
		@reports = Report.where(:state => 'New York').order(updated_at: :desc).page params[:page]
	end

	def north_carolina
		@reports = Report.where(:state => 'North Carolina').order(updated_at: :desc).page params[:page]
	end

	def north_dakota
		@reports = Report.where(:state => 'North Dakota').order(updated_at: :desc).page params[:page]
	end

	def ohio
		@reports = Report.where(:state => 'Ohio').order(updated_at: :desc).page params[:page]
	end

	def oklahoma
		@reports = Report.where(:state => 'Oklahoma').order(updated_at: :desc).page params[:page]
	end

	def oregon
		@reports = Report.where(:state => 'Oregon').order(updated_at: :desc).page params[:page]
	end

	def pennsylvania
		@reports = Report.where(:state => 'Pennsylvania').order(updated_at: :desc).page params[:page]
	end

	def rhode_island
		@reports = Report.where(:state => 'Rhode Island').order(updated_at: :desc).page params[:page]
	end

	def south_carolina
		@reports = Report.where(:state => 'South Carolina').order(updated_at: :desc).page params[:page]
	end

	def south_dakota
		@reports = Report.where(:state => 'South Dakota').order(updated_at: :desc).page params[:page]
	end

	def tennessee
		@reports = Report.where(:state => 'Tennessee').order(updated_at: :desc).page params[:page]
	end

	def texas
		@reports = Report.where(:state => 'Texas').order(updated_at: :desc).page params[:page]
	end

	def utah
		@reports = Report.where(:state => 'Utah').order(updated_at: :desc).page params[:page]
	end

	def vermont
		@reports = Report.where(:state => 'Vermont').order(updated_at: :desc).page params[:page]
	end

	def virginia
		@reports = Report.where(:state => 'Virginia').order(updated_at: :desc).page params[:page]
	end

	def washington
		@reports = Report.where(:state => 'Washington').order(updated_at: :desc).page params[:page]
	end

	def west_virginia
		@reports = Report.where(:state => 'West Virginia').order(updated_at: :desc).page params[:page]
	end

	def wisconsin
		@reports = Report.where(:state => 'Wisconsin').order(updated_at: :desc).page params[:page]
	end

	def wyoming
		@reports = Report.where(:state => 'Wyoming').order(updated_at: :desc).page params[:page]
	end

	private

	def get_report
		@report = Report.find(params[:id])
	end

	def report_params
		params.require(:report).permit([:state, :person, :content])
	end
end