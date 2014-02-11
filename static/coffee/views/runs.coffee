`
/**
 * @jsx React.DOM
 */
`
"use strict"
require [ '../main' ], -> 
  require [
    'widget/runs/runlist'
    'React'
    "jquery.bootstrap"
    "strftime"
  ], (RunList, React, jqb, strftime) ->
    React.renderComponent (RunList {}), document.getElementById('content')
