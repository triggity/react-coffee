`/** @jsx React.DOM */`
define [
  'React'
  'widget/builds/build'
  'lib/run/tablehead'
  'underscore'
], (React, Build, TableHead, underscore) ->

  {div, table, tr, td, tbody} = React.DOM
  defaultDict = 
    builds:
      [
        base: 
          ami_us_east_1: "ami-951524fc"
          ami_us_west_1: "ami-b0784af5" 
          ami_us_west_2: "ami-36d6b006" 
          build: "base"
          docker_registry: "tvservices"
          docker_repo: "tvservices/ubuntu-ansible"
      ]

  tableFields = ['build', 'download']

  BuildList = React.createClass
    getInitialState: -> 
      result = { builds: {}}
    componentDidMount: (node) ->
        req = $.ajax {url: '/builds', type: 'GET'}
        req.done (resp) =>
          # turn obj to list, throws away id because itis encapsulated in id field
          builds = _.map resp.results, (result, key) ->
            result    
          console.log builds
          @setState {builds: builds}
          return
        return
      
    render: ->
      console.log @state.builds
      build_names = [build.build for build in @state.builds]
      console.log build_names
      runNodes = [(Build {name: "base"}) for attr in build_names]
      (table {className: "runList table table-striped"}, [
        (TableHead {tableFields: tableFields})  
        (tbody {}, [ runNodes ])  
      ])

  return BuildList 
