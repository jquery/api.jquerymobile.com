module.exports = function( grunt ) {

grunt.loadNpmTasks( "grunt-jquery-content" );
grunt.loadNpmTasks( "grunt-spider" );

grunt.initConfig({
	xmllint: {
		all: [
			"entries/**",
			"includes/**",
			"categories.xml",
			"entries2html.xsl",
			"notes.xsl"
		]
	},
	"build-posts": {
		page: "pages/**"
	},
	"build-xml-entries": {
		all: "entries/**"
	},
	"build-resources": {
		all: "resources/**"
	},
	spider: {
		"stage" : {
			options: {
				url:  "http://stage.api.jquerymobile.com/"
			}
		},
		"production" : {
			options: {
				url:  "http://api.jquerymobile.com/"
			}
		}
	},
	wordpress: (function() {
		var config = require( "./config" );
		config.dir = "dist/wordpress";
		return config;
	})()
});

grunt.registerTask( "lint", [ "xmllint" ] );

grunt.registerTask( "build", [
	"build-posts",
	"build-resources",
	"build-xml-entries",
	"build-xml-categories",
	"build-xml-full"
]);

};
