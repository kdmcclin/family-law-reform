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
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Alabama').order(updated_at: :desc).page params[:page]
		end
	end

	def alaska
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Alaska').order(updated_at: :desc).page params[:page]
		end
	end

	def arizona
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:State => 'Arizona').order(updated_at: :desc).page params[:page]
		end
	end

	def arkansas
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Arkansas').order(updated_at: :desc).page params[:page]
		end
	end

	def california
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'California').order(updated_at: :desc).page params[:page]
		end
	end

	def colorado
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Colorado').order(updated_at: :desc).page params[:page]
		end
	end
	
	def connecticut
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Connecticut').order(updated_at: :desc).page params[:page]
		end
	end

	def dc
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'District of Columbia').order(updated_at: :desc).page params[:page]
		end
	end

	def delaware
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Delaware').order(updated_at: :desc).page params[:page]
		end
	end

	def florida
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Florida').order(updated_at: :desc).page params[:page]
		end
	end

	def georgia
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Georgia').order(updated_at: :desc).page params[:page]
		end
	end

	def hawaii
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Hawaii').order(updated_at: :desc).page params[:page]
		end
	end

	def idaho
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Idaho').order(updated_at: :desc).page params[:page]
		end
	end

	def illinois
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Illinois').order(updated_at: :desc).page params[:page]
		end
	end

	def indiana
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Indiana').order(updated_at: :desc).page params[:page]
		end
	end

	def iowa
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Iowa').order(updated_at: :desc).page params[:page]
		end
	end

	def kansas
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Kansas').order(updated_at: :desc).page params[:page]
		end
	end

	def kentucky
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Kentucky').order(updated_at: :desc).page params[:page]
		end
	end

	def louisiana
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Louisiana').order(updated_at: :desc).page params[:page]
		end
	end

	def maine
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Maine').order(updated_at: :desc).page params[:page]
		end
	end

	def maryland
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Maryland').order(updated_at: :desc).page params[:page]
		end
	end

	def massachusetts
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Massachusetts').order(updated_at: :desc).page params[:page]
		end
	end

	def michigan
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Michigan').order(updated_at: :desc).page params[:page]
		end
	end

	def minnesota
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Minnesota').order(updated_at: :desc).page params[:page]
		end
	end

	def mississippi
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Mississippi').order(updated_at: :desc).page params[:page]
		end
	end

	def missouri
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Missouri').order(updated_at: :desc).page params[:page]
		end
	end

	def montana
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Montana').order(updated_at: :desc).page params[:page]
		end
	end
	
	def nebraska
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Nebraska').order(updated_at: :desc).page params[:page]
		end
	end

	def nevada
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Nevada').order(updated_at: :desc).page params[:page]
		end
	end

	def new_hampsire
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'New Hampshire').order(updated_at: :desc).page params[:page]
		end
	end

	def new_jersey
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'New Jersey').order(updated_at: :desc).page params[:page]
		end
	end

	def new_mexico
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'New Mexico').order(updated_at: :desc).page params[:page]
		end
	end

	def new_york
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'New York').order(updated_at: :desc).page params[:page]
		end
	end

	def north_carolina
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'North Carolina').order(updated_at: :desc).page params[:page]
		end
	end

	def north_dakota
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'North Dakota').order(updated_at: :desc).page params[:page]
		end
	end

	def ohio
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Ohio').order(updated_at: :desc).page params[:page]
	end

	def oklahoma
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Oklahoma').order(updated_at: :desc).page params[:page]
		end
	end

	def oregon
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Oregon').order(updated_at: :desc).page params[:page]
		end
	end

	def pennsylvania
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Pennsylvania').order(updated_at: :desc).page params[:page]
		end
	end

	def rhode_island
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Rhode Island').order(updated_at: :desc).page params[:page]
		end
	end

	def south_carolina
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'South Carolina').order(updated_at: :desc).page params[:page]
		end
	end

	def south_dakota
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'South Dakota').order(updated_at: :desc).page params[:page]
		end
	end

	def tennessee
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Tennessee').order(updated_at: :desc).page params[:page]
		end
	end

	def texas
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Texas').order(updated_at: :desc).page params[:page]
		end
	end

	def utah
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Utah').order(updated_at: :desc).page params[:page]
		end
	end

	def vermont
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Vermont').order(updated_at: :desc).page params[:page]
		end
	end

	def virginia
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Virginia').order(updated_at: :desc).page params[:page]
		end
	end

	def washington
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Washington').order(updated_at: :desc).page params[:page]
		end
	end

	def west_virginia
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'West Virginia').order(updated_at: :desc).page params[:page]
		end
	end

	def wisconsin
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Wisconsin').order(updated_at: :desc).page params[:page]
		end
	end

	def wyoming
		if params[:search]
			@reports = Report.search(params[:search]).order(updated_at: :desc).page params[:page]
		else
			@reports = Report.where(:state => 'Wyoming').order(updated_at: :desc).page params[:page]
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