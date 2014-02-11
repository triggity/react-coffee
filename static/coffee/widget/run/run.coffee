`/** @jsx React.DOM */`
define [
  'React'
  'lib/run/idlink'
  'lib/run/buildlink'
  'lib/run/status'
  'lib/run/start_time'
  'lib/run/elapsed_time'
  'lib/run/downloadlink'
], (React, idlink, buildlink, status, start_time, elapsed_time, downloadlink) ->
  {div, tr, td} = React.DOM


  Run = React.createClass
    getInitialState: -> 
      { completed, create_time, exit_code } = @props
      result = { completed, create_time, exit_code }
      
    render: ->
      {create_time, exit_code, completed} = @state
      statusProps = {create_time, exit_code, completed}

      (tr {}, [
        (td {}, [idlink {id: @props.id}])
        (td {}, [buildlink {id: @props.build}])
        (td {}, [start_time {time: @props.create_time}])
        (td {}, [elapsed_time {time: @props.elapsed_time}])
        (td {}, [status statusProps])
      ])

  return Run 
