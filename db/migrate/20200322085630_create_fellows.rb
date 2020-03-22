class CreateFellows < ActiveRecord::Migration[5.2]
  def change
    create_table :fellows do |t|
      t.string :followed_source_id
      t.string :follower_id

      t.timestamps
    end
  end
end
