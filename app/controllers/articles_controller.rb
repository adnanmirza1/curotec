class ArticlesController < ApplicationController
  def create
    @article = Article.new(name: params[:name], description: params[:description], email: params[:email], mobile: params[:mobile], website: params[:website])
    if @article.save
      ContactMailer.send_contact_email(@article.name, @article.email, @article.mobile, @article.website, @article.description).deliver_now
      # send = SendEmail.new(@article.name, @article.email, @article.description)
      # send.sendmail
      redirect_to root_path, notice: 'Your request has been sent!'
    else
      render 'curotec/contact', notice: 'Your request could not be sent.' 
    end
  end
end
