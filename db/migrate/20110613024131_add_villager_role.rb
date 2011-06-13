class AddVillagerRole < ActiveRecord::Migration
  def self.up
    Role.create!(:id => 3, :title => 'Villager')
  end

  def self.down
    Role.destroy(:title => 'Villager')
  end
end
