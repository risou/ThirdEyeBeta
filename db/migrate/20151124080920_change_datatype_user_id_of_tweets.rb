class ChangeDatatypeUserIdOfTweets < ActiveRecord::Migration
  def change
    change_column :tweets, :user_id, :int
  end
end
