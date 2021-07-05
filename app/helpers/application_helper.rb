module ApplicationHelper
    def set_title(page_title = "")
        base_title = 'Hello App'
        if page_title.empty?
            base_title
        else
            page_title += " | from hello app"
        end
    end
end
