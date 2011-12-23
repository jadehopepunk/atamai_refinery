class AddCustomSlugToRefineryPageTranslations < ActiveRecord::Migration
  def up
    add_column :refinery_page_translations, :custom_slug, :string, :default => nil
  end

  def down
    remove_column :refinery_page_translations, :custom_slug
  end
end
