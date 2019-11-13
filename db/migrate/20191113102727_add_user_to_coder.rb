class AddUserToCoder < ActiveRecord::Migration[5.2]
  def change
    add_reference :coders, :user, foreign_key: true
  end
end
