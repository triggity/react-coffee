`/** @jsx React.DOM */`
define [
  'React'
  'lib/build/postlink'
], (React, postlink) ->
  {div, tr, td, span} = React.DOM


  Run = React.createClass
    getDefaultProps: -> 
      result = { name: "base"}
      
    render: ->

      (tr {}, [
        (td {}, [span {}, [@props.name]])
        (td {}, [postlink {link: @props.name}])
      ])

  return Run 
