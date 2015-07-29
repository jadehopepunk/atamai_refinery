module ApplicationHelper
 
    def get_bread_crumb()
      begin
          url = request.path
        breadcrumb = ''
        elements = url.split('/')
        for i in 1...elements.size
          breadcrumb += elements[i]
          breadcrumb += ': ' if i != elements.size - 1
        end
        breadcrumb.titlecase
      rescue
        'Not available'
      end
    end
end
