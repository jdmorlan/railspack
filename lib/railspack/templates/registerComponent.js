import React from 'react'
import ReactDOM from 'react-dom'

const getProps = (container) => {
  const propsString = container.getAttribute("data-react-props")
  const props = propsString ? JSON.parse(propsString) : null

  return props
}

export const registerComponent = (instance, containerName) => {
  const selector = `[data-react-container=${containerName}]`
  const containers = document.querySelectorAll(selector)
  
  for (let i = 0; i < containers.length; ++i) {
    let container = containers[i];
        
    const props = getProps(container)
    const element = React.createElement(instance, props)
    ReactDOM.render(element, container)
  }
}
