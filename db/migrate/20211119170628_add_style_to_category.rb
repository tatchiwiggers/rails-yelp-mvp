class AddStyleToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :style, :string
  end
end
