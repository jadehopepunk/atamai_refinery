class RenameBlogTables < ActiveRecord::Migration
  def change
    rename_table :blog_categories, :refinery_blog_categories
    rename_table :blog_categories_blog_posts, :refinery_blog_categories_blog_posts
    rename_table :blog_comments, :refinery_blog_comments
    rename_table :blog_posts, :refinery_blog_posts
  end
end
