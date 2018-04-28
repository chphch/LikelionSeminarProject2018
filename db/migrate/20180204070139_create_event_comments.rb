class CreateEventComments < ActiveRecord::Migration[5.1]
  def change
    create_table :event_comments do |t|
      t.belongs_to :event, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
