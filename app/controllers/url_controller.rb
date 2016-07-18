class UrlController < ApplicationController

  def index
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.save
    redirect_to root_path
  end

  def show
    @shorturl = Url.find(params[:id])
    redirect_to @shorturl.url
  end


  private

  def url_params
    params.require(:url).permit(:url)
  end

end
