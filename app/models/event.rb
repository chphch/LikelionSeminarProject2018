class Event < ApplicationRecord
  belongs_to :user
  has_many :event_comments, dependent: :destroy

  # Users : EventComments : Events  M:N Relations
  # commenting_user의 중복을 막을 때 아래와 같이 할 수 있음
  # has_many :commenting_users, -> { distinct }, through: :event_comments, source: :user
  has_many :commenting_users, through: :event_comments, source: :user
end
