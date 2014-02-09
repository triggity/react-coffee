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
  'widget/run/run'
  'React'
  "jquery"
  "jquery.bootstrap"
], (Run, React, $, jqb) ->
  req = $.ajax {url: '/runs', type: 'GET'}
  req.done (resp) =>
    # this is just because i dont 
    item = resp['3688649277079218806']
    { build, id, completed, create_time, exit_code, elapsed_time } = item
    result = { build, id, completed, create_time, exit_code, elapsed_time }
    React.renderComponent (Run result), document.getElementById('yes')
    return
  return
