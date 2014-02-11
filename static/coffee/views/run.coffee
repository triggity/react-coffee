`
/**
 * @jsx React.DOM
 */
`
"use strict"
require [ '../main' ], -> 
  require [
    'widget/run/run'
    'React'
    "jquery.bootstrap"
    "strftime"
  ], (Run, React, jqb, strftime) ->
    React.renderComponent (Run {}), document.getElementById('content')
