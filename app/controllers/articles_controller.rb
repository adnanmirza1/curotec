class ArticlesController < ApplicationController
  def create
    @article = Article.new(name: params[:name], description: params[:description], email: params[:email], phone: params[:phone], website: params[:website])
    if @article.save
      # ContactMailer.send_contact_email(@article.name, @article.email, @article.phone, @article.website, @article.description).deliver_now
      # send = SendEmail.new(@article.name, @article.email, @article.description)
      # send.sendmail
      redirect_to root_path, notice: 'Article was successfully created!.'
    else
      render 'curotec/contact'  
    end
  end
end
