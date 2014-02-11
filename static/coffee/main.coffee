`
/**
 * @jsx React.DOM
 */
`
"use strict"
require.config
  paths:
    lib: "../lib"
    widget: "../widget"
    vendor: "../vendor"
    React: "../vendor/react"
    "jquery.bootstrap":"../vendor/bootstrap"
    jquery: "../vendor/jquery-2.1.0"
    underscore: "../vendor/underscore"
    strftime: "../vendor/strftime"
  shim:
    underscore:
      exports: "_"
    "jquery.bootstrap":
      deps: ['jquery']
    strftime:
      exports: 'strftime'

