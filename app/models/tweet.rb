class Tweet < ActiveRecord::Base
  validates :tweet_id, presence: true
  validates :user_id, presence: true
  validates :name, presence: true
  validates :text, presence: true
end
