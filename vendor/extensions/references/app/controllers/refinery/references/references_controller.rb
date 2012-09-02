module Refinery
  module References
    class ReferencesController < ::ApplicationController

      before_filter :find_all_references
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @reference in the line below:
        present(@page)
      end

      def show
        @reference = Reference.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @reference in the line below:
        present(@page)
      end

    protected

      def find_all_references
        @references = Reference.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/references").first
      end

    end
  end
end
