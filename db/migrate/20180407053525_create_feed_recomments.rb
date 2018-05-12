class CreateFeedRecomments < ActiveRecord::Migration[5.1]
  def change
    create_table :feed_recomments do |t|
      t.belongs_to :feed_comment, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
