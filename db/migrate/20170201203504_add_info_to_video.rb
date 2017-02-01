class AddInfoToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :file_meta, :jsonb
  end
end
