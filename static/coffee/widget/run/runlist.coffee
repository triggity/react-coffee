`/** @jsx React.DOM */`
define [
  'React',
  'widget/run/run'
], (React, Run) ->
  {div} = React.DOM
  # prettier settimeout for coffeescript
  delay = (ms, func) -> setTimeout func, ms
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
      (div {className: "runList"}, [runNodes])

  return RunList 
