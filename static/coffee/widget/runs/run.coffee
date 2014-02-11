`/** @jsx React.DOM */`
define [
  'React'
  'lib/run/idlink'
  'lib/run/buildlink'
  'lib/run/status'
  'lib/run/start_time'
  'lib/run/elapsed_time'
], (React, idlink, buildlink, status, start_time, elapsed_time) ->
  {div, tr, td} = React.DOM

  getStatus = (create_time, exit_code, completed) ->
    status_state = switch
      when not create_time then 'pending'
      when completed and not exit_code then 'success'
      when completed and exit_code then 'failure'
      when not completed and not exit_code then 'running'
      else 'unkonwn'

  Run = React.createClass
    getInitialState: -> 
      { completed, create_time, exit_code } = @props
      result = { completed, create_time, exit_code }
      
    render: ->
      {create_time, exit_code, completed} = @state
      status_state = getStatus create_time, exit_code, completed

      (tr {}, [
        (td {}, [idlink {id: @props.id}])
        (td {}, [buildlink {id: @props.build}])
        (td {}, [start_time {time: @props.create_time}])
        (td {}, [elapsed_time {time: @props.elapsed_time}])
        (td {}, [status {status: status_state}])
      ])

  return Run 
