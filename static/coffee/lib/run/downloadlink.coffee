`/** @jsx React.DOM */`
define ['React'], (React) ->
  {button, a} = React.DOM
  DownloadLink = React.createClass
    getDefaultProps: -> 
      # TODO: need to make this better
      { link: "base"}
      
    render: ->
      attr = { type: "button", className: "btn btn-primary", href: @props.link, role: "button" }
      (button attr, ['Download Me'])

  return DownloadLink 
#<span class="glyphicon glyphicon-search"></span>
