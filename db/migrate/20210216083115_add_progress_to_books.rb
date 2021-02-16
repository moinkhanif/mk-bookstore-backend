class AddProgressToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :progress, :integer
  end
end
