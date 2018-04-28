class Event < ApplicationRecord
  has_many :event_comments, dependent: :destroy
end
