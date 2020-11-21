class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :image
      t.text :content
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
