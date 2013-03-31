module ApplicationHelper
  def flash_messages
    rv = ''
    flash.each do |name, msg|
      klass = case name
              when :notice
                'alert alert-success fade in'
              when :alert
                'alert alert-error fade in'
              else
                'alert alert-info fade in'
              end
      rv << content_tag(:div, class: klass) do
        '<a href="#" class="close" data-dismiss="alert">&times;</a>'.html_safe +
          msg
      end
    end
    rv.html_safe
  end
end
