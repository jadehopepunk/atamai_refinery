module Refinery
  module References
    module Admin
      class ReferencesController < ::Refinery::AdminController

        crudify :'refinery/references/reference', :xhr_paging => true

      end
    end
  end
end
