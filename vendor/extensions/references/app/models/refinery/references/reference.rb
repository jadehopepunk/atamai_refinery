module Refinery
  module References
    class Reference < Refinery::Core::BaseModel
      self.table_name = 'refinery_references'

      attr_accessible :title, :url, :body, :position

      acts_as_indexed :fields => [:title, :url, :body]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
