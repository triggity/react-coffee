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
  que = (i) -> i + 2
  console.log que(5)
