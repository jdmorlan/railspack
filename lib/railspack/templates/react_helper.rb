module ReactHelper
  def react_component(container, props=nil)
    content_tag(:div, nil, data: { "react-container": container, "react-props": props })
  end
end
