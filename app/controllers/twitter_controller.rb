class TwitterController < ApplicationController
  include TwitterClient

  def fav
    if request.xml_http_request?
      p params[:id]
      # TwitterController.client.favorite()
    end
  end
end
