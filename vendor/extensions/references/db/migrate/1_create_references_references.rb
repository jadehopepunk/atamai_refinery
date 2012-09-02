class CreateReferencesReferences < ActiveRecord::Migration

  def up
    create_table :refinery_references do |t|
      t.string :title
      t.string :url
      t.text :body
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-references"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/references/references"})
    end

    drop_table :refinery_references

  end

end
