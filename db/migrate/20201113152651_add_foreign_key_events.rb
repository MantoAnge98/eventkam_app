class AddForeignKeyEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :organizer, references: :users, index:true
    add_foreign_key :events, :users, column: :organizer_id
  end
end
