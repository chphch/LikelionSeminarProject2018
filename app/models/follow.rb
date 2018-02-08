class Follow < ApplicationRecord
  belongs_to :followed, class_name: :User#, foreign_key: :followed_id
end
