`
/**
 * @jsx React.DOM
 */
`
require [ '../main' ], -> 
  require [
    'widget/withjsx'
    'React'
    "jquery.bootstrap"
  ], (WithJSX, React, jqb) ->
    React.renderComponent `(<WithJSX name="Triggity" />), document.getElementById('content')`
