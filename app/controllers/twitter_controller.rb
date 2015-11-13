class TwitterController < ApplicationController
  include TwitterClient

  def fav
    if request.xml_http_request?
      TwitterController.client.favorite(params[:id])
    end
  end
  
  def unfav
    if request.xml_http_request?
      p params[:id]
      TwitterController.client.unfavorite(params[:id])
    end
  end
  
  def status
    p TwitterController.client.status(params[:id])
    p TwitterController.client.status(params[:id]).favorited?
  end
end
