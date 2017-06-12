class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.string :title
      t.text :description
      t.boolean :recurring
      t.references :scheduler, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
