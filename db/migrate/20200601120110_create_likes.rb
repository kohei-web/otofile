class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :l_pid
      t.string :l_uid

      t.timestamps
    end
  end
end
