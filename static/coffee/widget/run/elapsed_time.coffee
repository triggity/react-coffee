`/** @jsx React.DOM */`
define ['React', 'underscore'], (React, _) ->
  {div} = React.DOM
  secondsToPretty = (seconds) ->
    sec_num = parseInt seconds, 10 
    hours = Math.floor sec_num/3600
    minutes = Math.floor (sec_num - (hours * 3600)) / 60
    seconds = sec_num - (hours * 3600) - (minutes * 60)
    timeObj = { hours, minutes, seconds }
    format timeObj

  format = (obj) ->
      
    strftime = for metric, val of obj
      "#{val} #{metric}"
    strftime.join " "
    
  ElapsedTime = React.createClass
    getDefaultProps: -> 
      #defaults to epoch
      { time: 1}
      
    render: ->
      date_string = secondsToPretty @props.time
      (div {}, ["Time elapsed " +  date_string ])

  return ElapsedTime 
