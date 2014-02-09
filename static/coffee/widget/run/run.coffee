`/** @jsx React.DOM */`
define [
  'React',
  'widget/run/status',
  'widget/run/start_time',
  'widget/run/elapsed_time'
], (React, status, start_time, elapsed_time) ->
  {div, tr, td} = React.DOM
  # prettier settimeout for coffeescript
  delay = (ms, func) -> setTimeout func, ms
  Run = React.createClass
    getInitialState: -> 
      { completed, create_time, exit_code } = @props
      result = { completed, create_time, exit_code }
    componentDidMount: (node) ->
        delay 5000, () => 
          result = 
            completed: true 
            create_time: @state['create_time'] + 'woooooooooooo'
            exit_code: 99
          @setState(result)
        # req = $.ajax {url: '/runs', type: 'GET'}
        # req.done (resp) =>
        #   # this is just because i dont 
        #   item = resp['result']
        #   {build, id, completed} = item
        #   result = {build, id, completed}
        #   @setState(result) 
        #   return
        # return
      
    render: ->
      {create_time, exit_code, completed} = @state
      status_state = switch
        when not create_time then 'pending'
        when completed and not exit_code then 'success'
        when completed and exit_code then 'failure'
        when not completed and not exit_code then 'running'
        else 'noooo'

      (tr {}, [
        (td {className: 'ars'}, [@props.id])
        (td {}, [ @props.build])
        (start_time {time: @props.create_time})
        (elapsed_time {time: @props.elapsed_time})
        (status {status: status_state})
      ])

  return Run 
