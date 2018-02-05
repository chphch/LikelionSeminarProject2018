class FeedLike < ApplicationRecord
  # Users : FeedLikes : Feeds M:N Relations
  belongs_to :user
  belongs_to :feed
end
