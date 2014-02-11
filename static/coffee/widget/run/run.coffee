`/** @jsx React.DOM */`
define [
  'React'
  'underscore'
  'lib/run/idlink'
  'lib/run/buildlink'
  'lib/run/status'
  'lib/run/start_time'
  'lib/run/elapsed_time'
  'lib/run/downloadlink'
], (React, _, idlink, buildlink, status, start_time, elapsed_time, downloadlink) ->
  {div, tr, td, dl, dt, dd, span} = React.DOM

  defaultDict = 
    build: "base"
    completed: "true" 
    create_time: 1
    elapsed_time: 1
    exception: null
    exit_code: 0 
    id: 1
    interrupt_signal: null 
    outfile: "/tmp/hatchery/base-ami-2014-02-07T19:42:24.338529" 
    pid: 24272 
    target: "ami"

  Run= React.createClass
    getInitialState: -> 
      return defaultDict
    componentDidMount: (node) ->
      console.log 'requesting'
      req = $.ajax {url: "/run/#{runid}", type: 'GET'}
      req.done (resp) =>
        @setState resp
      return
      
    render: ->
      console.log 'yay'
      {create_time, exit_code, completed} = @state
      statusProps = {create_time, exit_code, completed}
      # maps nodes to attribute hashes 
      nodeMap = 
        id: [idlink, {id: @state.id}]
        build: [buildlink, {id: @state.build}]
        "start time": [start_time, {time: @state.create_time}]
        "elapsed time": [elapsed_time, {time: @state.elapsed_time}]
        "status": [status, statusProps]
        "downloadlink": [downloadlink, {link: @state.outfile}]
        "completed": [span, {}, [String @state.completed]]
        "exception": [span, {}, [String @state.exception]]
        "exit_code": [span, {}, [@state.exit_code]]
        "interrupt_signal": [span, {}, [String @state.interrupt_signal]]
        "pid": [span, {}, [@state.pid]]
        "target": [span, {}, [@state.target]]

      nodes = _.map nodeMap, (item, key) ->
        (dl {className:"dl-horizontal"}, [
          (dt {}, [key])  
          (dd {}, [(item[0] item[1], item[2])])  
          ]
        
        )  
      (div {}, [nodes])

  return Run 
