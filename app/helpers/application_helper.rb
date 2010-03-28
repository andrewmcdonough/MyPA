# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def contextual_link_class(active_controller_name)
    return (controller.controller_name == active_controller_name) ? 'active' : nil
  end
  
end
