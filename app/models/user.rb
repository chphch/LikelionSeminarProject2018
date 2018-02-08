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

  # Followings stands for users who I am following according to Twitter's convention
  # follows = Follow.where(follower_id: self.id)
  has_many :follows, foreign_key: :follower_id
  has_many :followings, through: :follows, source: :followed

  # Followers stands for users who follow me according to Twitter's convention
  # followeds = Follow.where(followed_id: self.id)
  has_many :followeds, class_name: :Follow, foreign_key: :followed_id
  has_many :followers, through: :followeds, source: :follower

  def request_follow(followed)
    Follow.create(follower_id: self.id, followed_id: followed.id)
  end
end
