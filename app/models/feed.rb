class Feed < ApplicationRecord
  belongs_to :user
  has_many :feed_comments

  # Users : FeedLikes : Feeds M:N Relations
  has_many :feed_likes
  has_many :liking_users, through: :feed_likes, source: :user
end
