class CreateReads < ActiveRecord::Migration[6.0]
  def change
    create_table :reads do |t|
      t.integer :user_id
      t.integer :text_id

      t.timestamps
    end
  end
end
