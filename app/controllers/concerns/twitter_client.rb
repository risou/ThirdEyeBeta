module TwitterClient
  extend ActiveSupport::Concern
  
  class_methods do
    def client
      @client ||= Twitter::REST::Client.new do |config|
        config.consumer_key = Settings.twitter.consumer_key
        config.consumer_secret = Settings.twitter.consumer_secret
        config.access_token = Settings.twitter.access_token
        config.access_token_secret = Settings.twitter.access_token_secret
      end
    end

    def stream
      # @stream ||= Twitter::Streaming::Client.new do |config|
      #   config.consumer_key = Settings.twitter.consumer_key
      #   config.consumer_secret = Settings.twitter.consumer_secret
      #   config.access_token = Settings.twitter.access_token
      #   config.access_token_secret = Settings.twitter.access_token_secret
      # end
      unless @stream
        TweetStream.configure do |config|
          config.consumer_key = Settings.twitter.consumer_key
          config.consumer_secret = Settings.twitter.consumer_secret
          config.oauth_token = Settings.twitter.access_token
          config.oauth_token_secret = Settings.twitter.access_token_secret
          config.auth_method = :oauth
        end
        @stream = TweetStream::Client.new
      end
        return @stream
    end
  end
end
