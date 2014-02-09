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
  shim:
    underscore:
      exports: "_"
    "jquery.bootstrap":
      deps: ['jquery']

require [
  'widget/run/runlist'
  'React'
  "jquery"
  "jquery.bootstrap"
], (RunList, React, $, jqb) ->
  React.renderComponent (RunList {}), document.getElementById('hatchruns')
