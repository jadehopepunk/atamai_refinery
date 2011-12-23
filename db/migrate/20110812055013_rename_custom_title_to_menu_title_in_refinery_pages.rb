class RenameCustomTitleToMenuTitleInRefineryPages < ActiveRecord::Migration
  def up
    rename_column :refinery_page_translations, :custom_title, :menu_title
    remove_column :refinery_pages, :custom_title_type
  end

  def down
    if ::Refinery::Page::Translation.column_names.map(&:to_sym).include?(:menu_title)
      rename_column :refinery_page_translations, :menu_title, :custom_title
    end
    add_column :refinery_pages, :custom_title_type, :string
  end
end
