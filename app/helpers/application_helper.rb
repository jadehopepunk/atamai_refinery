module ApplicationHelper
 
    def get_bread_crumb()
      begin
          url = request.path
        breadcrumb = ''
        elements = url.split('/')
        for i in 1...elements.size - 1
          #=  baseURL = "http://www.atamaivillage.org/" =
          breadcrumb += elements[i]
          breadcrumb += ' : ' if i != (elements.size - 2)
        end
        breadcrumb.titlecase
      rescue
        'Home'
      end
    end
    
    def get_title()
      begin
          url = request.path
        breadcrumb = ''
        elements = url.split('/')
        breadcrumb = elements[elements.size - 1]
        end
        breadcrumb.titlecase
      rescue
        'Home'
      end
    end
    
