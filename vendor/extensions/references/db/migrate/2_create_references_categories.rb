class CreateReferencesCategories < ActiveRecord::Migration

  def up
    create_table :refinery_references_categories do |t|
      t.string :title
      t.string :slug
      t.integer :position

      t.timestamps
    end

  end

  def down
    drop_table :refinery_references_categories
  end

end
