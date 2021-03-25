class CreateLectures < ActiveRecord::Migration[6.0]
  def change
    create_table :lectures do |t|
      t.string :category
      t.float :price
      t.integer :status
      t.string :title
      t.text :description
      t.datetime :start_at
      t.float :duration

      t.timestamps
    end
  end
end
