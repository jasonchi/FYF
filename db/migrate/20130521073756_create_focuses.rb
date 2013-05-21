class CreateFocuses < ActiveRecord::Migration
  def change
    create_table :focuses do |t|
      t.string :content
      t.integer :user_id
      t.datetime :focus_at
      t.integer :position
      t.text :note

      t.timestamps
    end
  end
end
