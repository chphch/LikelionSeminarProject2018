class CreateFeedComments < ActiveRecord::Migration[5.1]
  def change
    create_table :feed_comments do |t|
      t.belongs_to :feed, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
