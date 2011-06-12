module SubMenuHelper
  def menu_pages(current_page)
    menu_parent_page(current_page).children.live.in_menu
  end
  
  private
  
    def menu_parent_page(current_page)
      if current_page.root?
        current_page
      elsif current_page.children.empty? && !current_page.parent.root?
        current_page.parent.parent
      else
        current_page.parent
      end
    end
end