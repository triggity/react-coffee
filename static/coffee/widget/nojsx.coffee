`/** @jsx React.DOM */`
define [
  'React'
], (React) ->
  {div} = React.DOM


  HelloMessage = React.createClass
    getDefaultProps: -> 
      result = { name: "noName"}
      
    render: ->
      (div {}, ["Hello #{@props.name}"])

  return HelloMessage
