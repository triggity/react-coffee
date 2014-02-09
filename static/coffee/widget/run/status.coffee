`/** @jsx React.DOM */`
define ['React'], (React) ->
  {button} = React.DOM
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
      (button {type: 'button', className: 'btn ' + btnClass}, ["status : " +  @props.status ])

  return Run 
