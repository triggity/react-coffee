`/** @jsx React.DOM */`
define ['React'], (React) ->
  {div} = React.DOM
  StartTime = React.createClass
    getDefaultProps: -> 
      #defaults to epoch
      { time: 1}
    epochToDate: (date_string) ->
      dateObj = new Date parseFloat date_string
      dateObj.toString()
      
    render: ->
      date_string = @epochToDate(@props.time)
      (div {}, ["Date " +  date_string ])

  return StartTime 
