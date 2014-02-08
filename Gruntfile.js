"use strict";

module.exports = function(grunt) {
  grunt.initConfig({
    //
    // Node connect run phantomJS tests
    connect: {
      test: {
        port: 8000,
        base: '.'
      }
    },
    jshint: {
      files: ['static/**/*.coffee']          
    },
    coffee: {
      // Builds all coffee files to static/js mirroring componentry
      glob_to_multiple: {
        expand: true,
        options: {
          bare: true,
          sourceMap: true,
          sourceMapDir: 'static/js/'
        },
        cwd: 'static/coffee',
        src: ['**/*.coffee'],
        dest: 'static/jsx',
        ext: '.jsx'
      },
    },
    react: {
      dynamic: {
        files: [
          {
            expand: true,
            cwd: 'static/jsx',
            src: ['**/*.jsx'],
            dest: 'static/js',
            ext: '.js'
          }
        ]
      }
    },
    watch: {
      scripts: {
        files: ['static/coffee/**/*.coffee'],
        tasks: ['build']
      }
    },
    copy: {
      vendor: {
        files: [
          {
            expand: true,
            cwd: 'static/coffee/',
            src: ['vendor/*'],
            dest: 'static/js/'
          }
        ]
      }
    },
    less: {
      dev: {
        options: {
          sourceMap: true
        },
        files: [
          {
            expand: true,
            cwd: 'static/less/',
            src: ['**/*.less'],
            dest: 'static/css/',
            ext: '.css'
          }
        ]  
      }
    }
  });
  //
  //

  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-copy');
  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-react');


  grunt.registerTask('default', ['jshint']);
  grunt.registerTask('build', ['coffee', 'react', 'copy:vendor', 'less']);


};