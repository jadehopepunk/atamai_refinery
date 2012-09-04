module Refinery
  module References
    module Admin
      class CategoriesController < ::Refinery::AdminController

        crudify :'refinery/references/category', :xhr_paging => true

      end
    end
  end
end
