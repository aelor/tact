class PagesController < ApplicationController
  def index
    if params[:url]
      response = HTTParty.get(params[:url], timeout: 10)
      @code = response.body
    end
  end
end