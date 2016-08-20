import React from 'react'
import ReactDOM from 'react-dom'

import { registerComponent } from 'registerComponent'

// Register any components that you want to call in your Rails views
// using the react_component view_helper

const domReadyEvent = (typeof TurboLinks !== 'undefined') ? 'turbolinks:load' : 'DOMContentLoaded'
document.addEventListener(domReadyEvent, () => {
  // registerComponent(OhHai, 'oh-hai'));
}
