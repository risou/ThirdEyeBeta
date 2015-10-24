class HomeController < BaseController
  def index
    client = TweetStream::Client.new
    client.userstream do |status|
      puts "#{status.user.name}: #{status.text}"
    end
  end
end
