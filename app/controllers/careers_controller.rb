class CareersController < ApplicationController
  def new
    @career = Career.new
  end

  def create
    @career = Career.new(career_params)
    if @career.save 
      redirect_to admin_careers_path
    else
      render :new
    end
  end
  
  private

  def career_params
    params.require(:career).permit(:title, :description, :technology, :body, :experience)
  end
end
