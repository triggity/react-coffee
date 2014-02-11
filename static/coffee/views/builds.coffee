`
/**
 * @jsx React.DOM
 */
`
"use strict"
require [ '../main' ], -> 
  require [
    'widget/builds/builds'
    'React'
    "jquery.bootstrap"
    "strftime"
  ], (Builds, React, jqb, strftime) ->
    React.renderComponent (Builds  {}), document.getElementById('content')
