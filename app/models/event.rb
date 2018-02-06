class Event < ApplicationRecord
  belongs_to :user
  has_many :event_comments

  # Users : EventComments : Events  M:N Relations
  has_many :commenting_users, through: :event_comments, source: :user
end
