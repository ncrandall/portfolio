module ApplicationHelper
  def menu_class_style(name)
    if name == controller.action_name
      raw('class="icon icon-chevron-right" style="display:inline-block"')
    else
      #raw("class='icon icon-minus'")
    end
  end
end
