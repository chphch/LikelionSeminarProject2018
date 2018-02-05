class CreateFeedLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :feed_likes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :feed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
