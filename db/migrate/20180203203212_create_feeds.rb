class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
      t.string :title
      t.text :content
      t.belongs_to :user
      t.timestamps
    end
  end
end
