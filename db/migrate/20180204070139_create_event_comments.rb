class CreateEventComments < ActiveRecord::Migration[5.1]
  def change
    create_table :event_comments do |t|
      t.belongs_to :event, foreign_key: true
      t.string :content
      t.belongs_to :user

      t.timestamps
    end
  end
end
