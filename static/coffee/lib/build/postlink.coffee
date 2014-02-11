`/** @jsx React.DOM */`
define ['React'], (React) ->
  {button, a} = React.DOM
  PostLink = React.createClass
    getDefaultProps: -> 
      # TODO: need to make this better
      { link: "base"}

    handleClick: ->
      console.log "YAY"
      # TODO need to insert target 
      target = "ami"
      link = "build/#{@props.link}/#{target}"
      req = $.ajax {type: "POST", url: link}
      req.done (resp) ->
        alert(resp)
    render: ->
      link = "/build"
      attr = { type: "button", className: "btn btn-primary", role: "button", onClick: @handleClick }
      (button attr, ['Build?'])

#<span class="glyphicon glyphicon-search"></span>
  return PostLink 
