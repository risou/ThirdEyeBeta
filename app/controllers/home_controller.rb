class HomeController < BaseController
  include TwitterClient

  def index
    @tweets = HomeController.client.home_timeline
    
    # client = TweetStream::Client.new
    # client.userstream do |status|
    #   puts "#{status.user.name}: #{status.text}"
    # end
  end
end
