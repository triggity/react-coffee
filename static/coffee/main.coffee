`
/**
 * @jsx React.DOM
 */
`
"use strict"

require.config
  paths:
    React: "vendor/react"

require ['comp', 'React'], (Comp, React) ->
  React.renderComponent `<Comp name="John" />`, document.getElementById('yes')
