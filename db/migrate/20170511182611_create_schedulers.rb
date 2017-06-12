class CreateSchedulers < ActiveRecord::Migration
  def change
    create_table :schedulers do |t|
      t.string :name
      t.references :color, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
