class AddSeekedIdForUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_seeked_id, :string, after: :name
  end
end
