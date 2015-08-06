module ApplicationHelper
    
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
    
    def get_bread_crumb()
    begin
      url = request.path
        breadcrumb = ''
        so_far = '/'
        elements = url.split('/')
        for i in 1...elements.size - 1
        
            so_far += elements[i] + '/'
            
            if elements[i] =~ /^\d+$/
                begin
                    breadcrumb += link_to_if(i != elements.size - 1, eval("#{elements[i - 1].singularize.camelize}.find(#{elements[i]}).name").gsub("_"," ").to_s, so_far)
                rescue
                    breadcrumb += elements[i]
                end
            else
                breadcrumb += link_to_if(i != elements.size - 1,elements[i].gsub("_"," ").titleize, so_far)
            end
            breadcrumb += " : " if i != elements.size - 2
        end
        breadcrumb.html_safe
    rescue
        ':('
    end
end
