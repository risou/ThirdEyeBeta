class Tasks::Extracter
  include TwitterClient

  def self.execute
    @tweets = Tasks::Extracter.client.home_timeline
    p @tweets
  end
end
