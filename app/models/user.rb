class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :feeds
  has_many :feed_comments

  has_many :events
  # Users : EventComments : Events  M:N Relations
  has_many :event_comments
  has_many :commented_events, through: :event_comments, source: :event

  # Users : FeedLikes : Feeds M:N Relations
  has_many :feed_likes
  has_many :liked_feeds, through: :feed_likes, source: :feed
end
