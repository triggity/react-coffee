`
/**
 * @jsx React.DOM
 */
`
require [ '../main' ], -> 
  require [
    'widget/nojsx'
    'React'
    "jquery.bootstrap"
  ], (NoJSX, React, jqb) ->
    React.renderComponent (NoJSX {name: "Triggity"}), document.getElementById('content')
