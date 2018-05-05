class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.belongs_to :user

      t.timestamps
    end
  end
end
