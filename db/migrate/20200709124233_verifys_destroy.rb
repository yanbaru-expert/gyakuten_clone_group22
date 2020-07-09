class VerifysDestroy < ActiveRecord::Migration[6.0]
  def change
    drop_table :verifies
    drop_table :watcheds
  end
end
