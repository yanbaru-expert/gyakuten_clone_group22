class CreateVerifies < ActiveRecord::Migration[6.0]
  def change
    create_table :verifies do |t|
      t.integer :user_id
      t.integer :movie_id
      t.integer :text_id

      t.timestamps
    end
  end
end
