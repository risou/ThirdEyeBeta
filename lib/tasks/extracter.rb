class Tasks::Extracter
  include TwitterClient

  def self.execute
    @tweets = Tasks::Extracter.client.home_timeline
    @tweets.each do |tweet|
      p tweet.user.screen_name
      p tweet.user.name
      p tweet.text
      p tweet.id
    end
  end
end
