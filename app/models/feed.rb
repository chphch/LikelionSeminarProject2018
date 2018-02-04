class Feed < ApplicationRecord
  belongs_to :user
  has_many :feed_comments
end
