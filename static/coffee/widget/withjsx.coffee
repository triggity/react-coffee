`/** @jsx React.DOM */`
define [
  'React'
], (React) ->

  HelloMessage = React.createClass
    getDefaultProps: -> 
      result = { name: "noName"}
      
    render: ->
      `(<div> Hello {this.props.name}</div>)`

  return HelloMessage
