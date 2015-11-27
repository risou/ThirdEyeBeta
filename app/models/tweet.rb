class Tweet < ActiveRecord::Base
  belongs_to :user
  validates :tweet_id, presence: true
  validates :user_id, presence: true
  validates :name, presence: true
  validates :text, presence: true
end
