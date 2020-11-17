class CreateLabellings < ActiveRecord::Migration[5.2]
  def change
    create_table :labellings do |t|
      t.references :event, foreign_key:true
      t.references :label, foreign_key:true
    end
  end
end
