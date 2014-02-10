`/** @jsx React.DOM */`
define ['React'], (React) ->
  {div, td, span} = React.DOM
  formatTime = (ugly) ->
    strftime '%a %b %d, %Y %I:%M:%S %p', ugly
  epochToDate = (date_string) ->
    dateObj = new Date parseFloat date_string
  StartTime = React.createClass
    getDefaultProps: -> 
      #defaults to epoch
      { time: 1}
      
    render: ->
      date_string = formatTime epochToDate @props.time
      (span {}, [date_string ])

  return StartTime 
