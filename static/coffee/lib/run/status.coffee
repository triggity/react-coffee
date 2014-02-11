`/** @jsx React.DOM */`
define ['React'], (React) ->
  {button, td} = React.DOM

  getStatus = (create_time, exit_code, completed) ->
    status_state = switch
      when not create_time then 'pending'
      when completed and not exit_code then 'success'
      when completed and exit_code then 'failure'
      when not completed and not exit_code then 'running'
      else 'unkonwn'

  classMap =
    success: 'btn-success'
    failure: 'btn-danger'
    running: 'btn-warning'
    pending: 'btn-primary'

  Run = React.createClass
    getDefaultProps: -> 
      { status: 999 }
      
    render: ->
      {create_time, exit_code, completed} = @props
      status = getStatus create_time, exit_code, completed
      btnClass = classMap[status] 
      (button {type: 'button', className: 'btn ' + btnClass}, [status])

  return Run 
