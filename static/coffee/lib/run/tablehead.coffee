`/** @jsx React.DOM */`
define [
  'React',
], (React) ->
  {div, thead, tr, th} = React.DOM
  # prettier settimeout for coffeescript
  TableHead = React.createClass
    getDefaultProps: -> 
       return { tableFields : []}
      
    render: ->
      runNodes = [(th {}, [attr]) for attr in @props.tableFields]
      (thead {}, [
        (tr {}, [runNodes])
      ])

  return TableHead
