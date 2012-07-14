class RenameInquiries < ActiveRecord::Migration
  def up
    rename_table :inquiries, :refinery_inquiries_inquiries
  end

  def down
    rename_table :refinery_inquiries_inquiries, :inquiries
  end
end
