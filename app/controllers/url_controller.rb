class UrlController < ApplicationController

  def index
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)


    # create random string
    @url.code = Url.ran_string
    # some random string... make sure user sees this in my view


    @url.save
    redirect_to root_path
  end

  def show
    @shorturl = Url.find(params[:id])
    redirect_to @shorturl.url
  end

  def code
    if @shorturl = Url.find_by_code(params[:code])
      redirect_to @shorturl.url
    else
      @url = Url.new
      @url.url = "http://#{params[:code]}"
      @url.code = Url.ran_string
      @url.save
      redirect_to root_path
    end
  end


  private

  def url_params
    params.require(:url).permit(:url)
  end

end
