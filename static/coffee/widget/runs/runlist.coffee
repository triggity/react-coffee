`/** @jsx React.DOM */`
define [
  'React'
  'widget/runs/run'
  'lib/run/tablehead'
], (React, Run, TableHead) ->
  {div, table, tr, td, tbody} = React.DOM
  tableFields = ['id', 'build', 'create_time', 'elapsed_time', 'status']
  RunList = React.createClass
    getInitialState: -> 
      result = { runs: []}
    componentDidMount: (node) ->
        req = $.ajax {url: '/runs', type: 'GET'}
        req.done (resp) =>
          # turn obj to list, throws away id because itis encapsulated in id field
          toList = for runid, info of resp
            info
          @setState({runs: toList}) 
          return
        return
      
    render: ->
      runNodes = [(Run attr) for attr in @state.runs]
      (table {className: "runList table table-striped"}, [
        (TableHead {tableFields: tableFields})  
        (tbody {}, [ runNodes ])  
      ])

  return RunList 
