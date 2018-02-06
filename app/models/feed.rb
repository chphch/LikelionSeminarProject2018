class Feed < ApplicationRecord
  belongs_to :user
  has_many :feed_comments, dependent: :destroy

  # Users : FeedLikes : Feeds M:N Relations
  # dependent: :destroy means destroying all belonging feed_likes upon destroying a feed
  has_many :feed_likes, dependent: :destroy
  has_many :liking_users, through: :feed_likes, source: :user
end
