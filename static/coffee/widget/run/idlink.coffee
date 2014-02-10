`/** @jsx React.DOM */`
define ['React'], (React) ->
  {a} = React.DOM
  IdLink = React.createClass
    getDefaultProps: -> 
      #defaults to epoch
      { id: 1}
      
    render: ->
      link = "/run/#{@props.id}"
      (a {href: link}, [@props.id])

  return IdLink 
