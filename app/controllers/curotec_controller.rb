class CurotecController < ApplicationController
  def index
  end
  def about
  end
  def success_stories
  end
  def careers
    @careers = Career.all
  end
  def insights
  end
  def contact
  end
  def service
  end
  def career_job
    @jobs = Career.find(params[:format])
  end
  def sitemap
  end
  def policy
  end
end
