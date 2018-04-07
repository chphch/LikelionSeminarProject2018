class FeedComment < ApplicationRecord
  belongs_to :feed
  has_many :feed_recomments
end
