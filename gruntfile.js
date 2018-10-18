module.exports = function(grunt) {
    grunt.initConfig({
        browserify: {
            dist: {
                files: [
                    {
                        expand: true, // Enable dynamic expansion.
                        cwd: "assets/js/", // Source Path
                        src: ["*.js"], // Actual pattern(s) to match.
                        dest: "assets/pjs/minified", // Destination folder
                        ext: ".js" // Dest filepaths will have this extension.
                    }
                ],
                options: {
                    transform: [["babelify", { presets: ["env"] }], ['vueify']],
                    browserifyOptions: {
                        debug: false
                    }
                }
            },
            dev: {
                files: [
                    {
                        expand: true, // Enable dynamic expansion.
                        cwd: "assets/js/", // Source Path
                        src: ["*.js"], // Actual pattern(s) to match.
                        dest: "assets/js/minified", // Destination folder
                        ext: ".min.js" // Dest filepaths will have this extension.
                    }
                ],
                options: {
                    transform: [["babelify", { presets: ["env"] }], ['vueify']],
                    browserifyOptions: {
                        debug: true
                    }
                }
            }
        },
        uglify: {
            options: {
                banner:
                    '/*! Grunt Uglify <%= grunt.template.today("yyyy-mm-dd") %> */ ',
                sourceMap: false
            },
            build: {
                files: [
                    {
                        expand: true,
                        src: ["*.js"],
                        cwd: "assets/js/pjs",
                        dest: "assets/js/minified",
                        ext: ".min.js"
                    }
                ]
            }
        },
        sass: {
            dist: {
                options: {
                    outputStyle: "compressed",
                    sourceMap: false,
                    noCache: true
                },
                files: [
                    {
                        expand: true,
                        cwd: "assets/sass",
                        src: ["*.scss"],
                        dest: "assets/css",
                        ext: ".min.css"
                    }
                ]
            },
            dev: {
                options: {
                    outputStyle: "expanded",
                    sourceMap: false,
                    update: true
                },
                files: [
                    {
                        expand: true,
                        cwd: "assets/sass",
                        src: ["*.scss"],
                        dest: "assets/css",
                        ext: ".min.css"
                    }
                ]
            }
        },
        
        // configure the "grunt watch" task
        watch: {
            sass: {
                files: "assets/sass/*",
                tasks: ["newer:sass:dev"]
            },
            browserify: {
                files: "assets/js/*",
                tasks: ["newer:browserify:dev"]
            },
            copy: {
                files: "assets/img/**",
                tasks: ["newer:copy:images", "newer:copy:fonts"]
            }
        },
        browserSync: {
            docker: {
                bsFiles: {
                    src: [
                        "assets/css/*",
                        "assets/fonts/*",
                        "assets/img/**",
                        "assets/js/**",
                        "index.php",
                        "app/**/*.php",
                        "app/**/*.json"
                    ]
                },
                options: {
                    proxy: process.env.SERVERNAME,
                    watchTask: true,
                    notify: true,
                    open: false
                }
            }
        }
    });

    grunt.loadNpmTasks("grunt-contrib-copy");
    grunt.loadNpmTasks("grunt-sass");
    grunt.loadNpmTasks("grunt-browserify");
    grunt.loadNpmTasks("grunt-contrib-watch");
    grunt.loadNpmTasks("grunt-contrib-uglify");
    grunt.loadNpmTasks("grunt-browser-sync");
    grunt.loadNpmTasks("grunt-newer");
    grunt.registerTask("dev-docker", [
        "browserify:dev",
        "copy",
        "sass:dev",
        "browserSync:docker",
        "watch"
    ]);
    grunt.registerTask("build", [
        "browserify:dist",
        "uglify",
        "copy",
        "sass:dist"
    ]);

};
