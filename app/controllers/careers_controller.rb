class CareersController < ApplicationController
  def new
    @career = Career.new
  end

  def create
    @career = Career.new(career_params)
    if @career.save 
      redirect_to admin_careers_path, notice: 'Your application has been sent!'
    else
      render :new, notice: 'Your request could not be sent.'
    end
  end
  
  private

  def career_params
    params.require(:career).permit(:title, :description, :technology, :body, :experience)
  end
end
