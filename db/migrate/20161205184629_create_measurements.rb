class CreateMeasurements < ActiveRecord::Migration[5.0]
  def change
    create_table :measurements do |t|
      t.string :amount
      t.belongs_to :recipe, foreign_key: true
      t.belongs_to :item, foreign_key: true
      t.timestamps
    end
  end
end
