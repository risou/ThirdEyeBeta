class TweetController < ApplicationController
  def fav
    Twitter::REST::Favorites.fav(:id)
  end
end
