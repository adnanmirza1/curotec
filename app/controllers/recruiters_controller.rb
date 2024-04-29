class RecruitersController < ApplicationController

  def create
    @recruiters = Recruiter.new(name: params[:name], mobile: params[:mobile], email: params[:mobile], education_details: params[:education_details], current_salary: params[:current_salary], expected_salary: params[:expected_salary], skill_set: params[:skill_set], job_title: params[:job_title], avatar: params[:avatar])
    if @recruiters.save
      redirect_to careers_path
    else 
      render careers_path
    end
  end
end
