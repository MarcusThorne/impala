class AddColumnToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :link, :string
  end
end
