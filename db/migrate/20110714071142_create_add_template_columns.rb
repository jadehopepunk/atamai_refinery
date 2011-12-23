class CreateAddTemplateColumns < ActiveRecord::Migration
  def self.up
    add_column :refinery_pages, :view_template, :string
    add_column :refinery_pages, :layout_template, :string
  end

  def self.down
    remove_column :refinery_pages, :layout_template
    remove_column :refinery_pages, :view_template
  end
end
