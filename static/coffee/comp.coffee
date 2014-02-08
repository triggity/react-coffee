`/** @jsx React.DOM */`
define ['React'], (React) ->
  {div} = React.DOM
  Run = React.createClass
    getInitialState: => 
      {
        number: 999
        build: 'notbase'
        completed: false
      }
    componentDidMount: (node) ->
      req = $.ajax {url: '/runs', type: 'GET'}
      self = @
      req.done (resp) ->
        # this is just because i dont 
        item = resp['3688649277079218806']
        result = 
          number: '3688649277079218806'
          build: item.build
          completed: item.completed
        self.setState(result) 
        return
      return
      
    render: ->
      (div {}, [
        (div {className: 'ars'}, ['id: ' + @state.number])
        (div {}, ['Build : ' + @state.build])
        (div {}, ['Completed: ' + @state.completed])
      ])

  return Run 
