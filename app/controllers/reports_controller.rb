class ReportsController < ApplicationController

  load_and_authorize_resource


  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def destroy
    Report.delete(params[:id])
    redirect_to '/reports'
  end

  def new
    @report = Report.new
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    if @report.update_attributes(report_params)
      redirect_to @report 
    else
      render 'edit'
    end
  end

  
  def create
    report = Report.create(report_params)
    if report.save
      redirect_to report
    else
      flash[:danger] = "Something was wrong"
      redirect_to '/'
    end
  end

  private
  def report_params
    params.require(:report).permit(:title, :content, :picture)
  end
end
