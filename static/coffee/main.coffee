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
  shim:
    "jquery.bootstrap":
      deps: ['jquery']

require [
  'lib/run/run'
  'React'
  "jquery"
  "jquery.bootstrap"
], (Comp, React, $, jqb) ->
  req = $.ajax {url: '/runs', type: 'GET'}
  req.done (resp) =>
    # this is just because i dont 
    item = resp['3688649277079218806']
    { build, id, completed, create_time, exit_code } = item
    result = { build, id, completed, create_time, exit_code }
    React.renderComponent (Comp result), document.getElementById('yes')
    return
  return
