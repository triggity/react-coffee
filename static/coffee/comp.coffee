`/** @jsx React.DOM */`
define ['React'], (React) ->
  HelloMessage = React.createClass
    render: => `(<div>Hello Motherfucker {this.props.name}</div>)`
  return HelloMessage
