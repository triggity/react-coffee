"use strict"

module.exports = (grunt) -> 
  grunt.initConfig
    # connection settings
    connect: 
      test: 
        port: 8000
        base: '.'
    # hinting at files
    jshint: 
      files: ['static/**/*.coffee']
    # coffee compiler
    coffee: 
      # Builds all coffee files to static/jsx for react building 
      glob_to_multiple: 
        expand: true
        options:
          bare: true
          sourceMap: true
        cwd: 'static/coffee'
        src: ['**/*.coffee']
        dest: 'static/jsx'
        ext: '.jsx'
    # react compiler, jsx to js
    react: 
      dynamic: 
        files: [
          expand: true
          cwd: 'static/jsx'
          src: ['**/*.jsx']
          dest: 'static/js'
          ext: '.js'
        ]
    watch:
      scripts: 
        files: ['static/coffee/**/*.coffee', 'static/less/**/*.less']
        tasks: ['build']
    copy:
      vendorscript: 
        files: [
          expand: true,
          cwd: 'static/coffee/'
          src: ['vendor/*']
          dest: 'static/js/'
        ]
      vendorstyle:
        files: [
          expand: true,
          cwd: 'static/less/'
          src: ['vendor/*']
          dest: 'static/css/'
        ]
      sourcemaps: 
        files: [
          expand: true,
          cwd: 'static/jsx/'
          src: ['**/*.map']
          dest: 'static/js/'
        ]
    less: 
      dev:
        options: 
          sourceMap: true
        files: [
          expand: true,
          cwd: 'static/less/'
          src: ['**/*.less']
          dest: 'static/css/'
          ext: '.css'
        ]  
    clean:
      jsx: ["static/jsx"]
    grunt.loadNpmTasks 'grunt-contrib-jshint' 
    grunt.loadNpmTasks 'grunt-contrib-coffee' 
    grunt.loadNpmTasks 'grunt-contrib-watch' 
    grunt.loadNpmTasks 'grunt-contrib-copy' 
    grunt.loadNpmTasks 'grunt-contrib-less' 
    grunt.loadNpmTasks 'grunt-react' 
    grunt.loadNpmTasks('grunt-contrib-clean')
  
    grunt.registerTask 'default', ['jshint']
    grunt.registerTask 'build', ['coffee', 'react', 'less', 'copy', 'clean']
    grunt.registerTask 'bwatch', ['build', 'watch']
