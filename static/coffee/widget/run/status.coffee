`/** @jsx React.DOM */`
define ['React'], (React) ->
  {button, td} = React.DOM
  delay = (ms, func) -> setTimeout func, ms
  classMap =
    success: 'btn-success'
    failure: 'btn-danger'
    running: 'btn-warning'
    pending: 'btn-primary'
  Run = React.createClass
    getDefaultProps: -> 
      { status: 999 }
      
    render: ->
      btnClass = classMap[@props.status] 
      (td {}, [
        (button {type: 'button', className: 'btn ' + btnClass}, [@props.status ])
      ])

  return Run 
