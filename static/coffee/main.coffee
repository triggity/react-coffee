`
/**
 * @jsx React.DOM
 */
`
"use strict"
require.config
  paths:
    widget: "../widget"
    vendor: "../vendor"
    React: "../vendor/react"
    "jquery.bootstrap":"../vendor/bootstrap"
    jquery: "../vendor/jquery-2.1.0"
  shim:
    "jquery.bootstrap":
      deps: ['jquery']

