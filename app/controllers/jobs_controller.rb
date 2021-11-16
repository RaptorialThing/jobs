class JobsController < ApplicationController
before_action :require_user_logged_in!, only: [:edit,:update,:new,:create,:destroy]
def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end  

  def edit
    @job = Job.find(params[:id])
  end  

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      redirect_to @job
    else 
      render :edit 
    end     
  end

  def new  
    @job = Job.new
  end

  def create

    @job = Job.new(job_params)
    
    if @job.save
      redirect_to @job
    else
      render :new
    end  
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    redirect_to @job
  end  

  private
    def job_params
      params.require(:job).permit(:title,:description)
    end  
end
