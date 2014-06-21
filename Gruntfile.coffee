module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-steroids'

  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-extend-config'

  grunt.registerTask 'steroids-compile-less', "Compile less files if they exist", ->

    grunt.extendConfig
      less:
        dist:
          files: [
            # .less and .less files
            {
              expand: true
              cwd: 'www/'
              src: ['**/!(_*|*.android).less', '**/!(_*|*.android).less']
              dest: 'dist/'
              ext: '.css'
            }

            # .android.less and .android.less files
            {
              expand: true
              cwd: 'www/'
              src: ['**/*.android.less', '**/*.android.less']
              dest: 'dist/'
              ext: '.android.css'
            }
          ]

    lessFiles = grunt.file.expand(["www/**/*.less"])

    if lessFiles.length > 0
      grunt.log.writeln("less files found, attempting to compile them to dist/...")
      grunt.task.run("less:dist")

    else
      grunt.log.writeln("No .less files found in app/ or www/, skipping.")

  grunt.registerTask 'steroids-compile-jade', "Compile jade files if they exist", ->

    grunt.extendConfig
      jade:
        dist:
          files: [
            {
              expand: true
              cwd: 'www/'
              src: ['**/!(_*|*.android).jade', '**/!(_*|*.android).jade']
              dest: 'dist/'
              ext: '.html'
            }
            {
              expand: true
              cwd: 'www/'
              src: ['**/*.android.jade', '**/*.android.jade']
              dest: 'dist/'
              ext: '.android.html'
            }
          ]
    jadeFiles = grunt.file.expand(["www/**/*.jade"])

    if jadeFiles.length > 0
      grunt.log.writeln("jade files found, attempting to compile them to dist/...")
      grunt.task.run("jade:dist")

    else
      grunt.log.writeln("No .jade files found in app/ or www/, skipping.")

  grunt.registerTask 'default', [
    'steroids-make'
    'steroids-compile-less'
    'steroids-compile-jade'
  ]