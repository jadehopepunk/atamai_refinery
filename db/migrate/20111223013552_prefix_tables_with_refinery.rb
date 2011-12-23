class PrefixTablesWithRefinery < ActiveRecord::Migration
  def up
    safe_rename_table :page_translations, :refinery_page_translations
    safe_rename_table :pages, :refinery_pages
    safe_rename_table :roles, :refinery_roles_users
    safe_rename_table :users, :refinery_users
    safe_rename_table :page_parts, :refinery_page_parts
    safe_rename_table :page_part_translations, :refinery_page_part_translations
    safe_rename_table :user_plugins, :refinery_user_plugins
    safe_rename_table :images, :refinery_images
    safe_rename_table :resources, :refinery_resources

    rename_column :refinery_page_translations, :page_id, :refinery_page_id
    rename_column :refinery_page_parts, :page_id, :refinery_page_id
    rename_column :refinery_page_part_translations, :page_part_id, :refinery_page_part_id
  end

  def down
  end

  def safe_rename_table(source, dest)
    rename_table source, dest
  rescue
    nil
  end
end
