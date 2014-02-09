`/** @jsx React.DOM */`
define [
  'React',
  'widget/run/status',
  'widget/run/start_time',
  'widget/run/elapsed_time'
], (React, status, start_time, elapsed_time) ->
  {div, thead, tr, th} = React.DOM
  # prettier settimeout for coffeescript
  TableHead = React.createClass
    getDefaultProps: -> 
       return { tableFields : []}
      
    render: ->
      runNodes = [(th {}, [attr]) for attr in @props.tableFields]
      (thead {}, [
        (tr {}, [runNodes])
#         (div {className: 'ars'}, ['id: ' + @props.id])
#         (div {}, ['Build : ' + @props.build])
#         (div {}, ['Completed: ' + @state.completed])
#         (start_time {time: @props.create_time})
#         (elapsed_time {time: @props.elapsed_time})
#         (status {status: status_state})
      ])

  return TableHead
