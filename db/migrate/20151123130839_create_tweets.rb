class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet_id
      t.string :user_id
      t.string :name
      t.string :text

      t.timestamps null: false
    end
  end
end
