`
/**
 * @jsx React.DOM
 */
`
"use strict"

require.config
  paths:
    React: "vendor/react"
    "jquery.bootstrap":"vendor/bootstrap"
    jquery: "vendor/jquery-2.1.0"
  shim:
    "jquery.bootstrap":
      deps: ['jquery']

require ['comp', 'React', "jquery.bootstrap"], (Comp, React) ->
  React.renderComponent `<Comp name="John" />`, document.getElementById('yes')
  que = (i) -> i + 2
  console.log que(5)
