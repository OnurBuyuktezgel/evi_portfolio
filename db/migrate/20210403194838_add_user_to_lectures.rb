class AddUserToLectures < ActiveRecord::Migration[6.0]
  def change
    add_reference :lectures, :user, null: false, foreign_key: true
  end
end
