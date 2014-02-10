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
    underscore: "vendor/underscore"
    strftime: "vendor/strftime"
  shim:
    underscore:
      exports: "_"
    "jquery.bootstrap":
      deps: ['jquery']
    strftime:
      exports: 'strftime'

require [
  'widget/run/runlist'
  'React'
  "jquery"
  "jquery.bootstrap"
  "strftime"
], (RunList, React, $, jqb, strftime) ->
  React.renderComponent (RunList {}), document.getElementById('hatchruns')
