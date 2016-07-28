class UrlController < ApplicationController

  def index
    @urls = Url.all
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)

    # create random string
    @url.ran_string
    # some random string... make sure user sees this in my view

    @url.save
    redirect_to root_path
  end

  def show
    @url = Url.find(params[:id])
    redirect_to @url.url
  end



  private

  def url_params
    params.require(:url).permit(:url)
  end

end
