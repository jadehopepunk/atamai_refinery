module Refinery
  module References
    class Category < Refinery::Core::BaseModel
      attr_accessible :title, :slug, :position

      acts_as_indexed :fields => [:title, :slug]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
