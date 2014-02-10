`/** @jsx React.DOM */`
define ['React'], (React) ->
  {a} = React.DOM
  BuildLink = React.createClass
    getDefaultProps: -> 
      #defaults to epoch
      { build: "base"}
      
    render: ->
      link = "build/#{@props.build}"
      (a {href: link}, [@props.build])

  return BuildLink 
