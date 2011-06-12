module SubMenuHelper
  def menu_pages(current_page)
    parent_page = current_page.root? ? current_page : current_page.parent
    parent_page.children.live.in_menu
  end
end