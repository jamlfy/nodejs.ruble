require 'ruble'

with_defaults :scope => 'source.js' do

	snippet 'dirname' do |s|
		s.trigger = 'dir'
		s.expansion = '__dirname$0'
	end

	snippet 'require' do |s|
		s.trigger = 'require'
		s.expansion = 'var ${1:Module/sys/fs/path/http/net/child_process/util/crypto/tls/string_decoder/dgram/dns/url/punycode/readline/querystring/repl/vm/zlib/os/cluster/socketio} = require(\'${1}\');$0'
	end

	snippet t(:script) do |s|
		s.trigger = '!node'
		s.expansion = '#!/usr/bin/env node$0'
	end
# Simple
	snippet 'var' do |s|
		s.expansion = "var ${1:vname} = ${2:value};"
		s.trigger = 'var'
	end
	snippet 'var ... = function() {...}' do |s|
		s.expansion = "var ${1:function name} = function(${2:params}) {
	$0
};"
		s.trigger = 'vfunc'
	end
	snippet 'for..in' do |s|
		s.expansion = "for ( ${1:prop} in ${2:obj} ) {
	${3:statements}
	}"
		s.trigger = 'forin'
	end
	snippet 'while' do |s|
		s.expansion = "while ( ${1:condition} ) {
	${2:statement}
};"
		s.trigger = 'while'
	end
	snippet 'block' do |s|
		s.expansion = "{
	${0}
	}"
		s.trigger = 'b'
	end
	snippet 'switch' do |s|
		s.expansion = "switch ( ${1:expression} ) {
	case ${2:label_1}:
		${3:statement_1}
		break;
	default:
		${8:statement_def}
		break;
};"
		s.trigger = 'switch'
	end
	snippet 'concat string' do |s|
		s.expansion = "' + $0 + '"
		s.trigger = 'cs'
	end
	snippet 'conditional' do |s|
		s.expansion = "${1:condition} ? ${2:if_true} : ${3:if_false}"
		s.trigger = '?'
	end
	snippet 'do..while' do |s|
		s.expansion = "do {
	${1:statement}
} while ( ${2:condition} );"
		s.trigger = 'dowhile'
	end
	snippet 'end' do |s|
		s.expansion = ".end()$0"
		s.trigger = 'end'
	end

# Events
	snippet 'addListener' do |s|
		s.trigger = 'addListener'
		s.expansion = 'addListener(\'${1:event}\', function(${2:Var}){
	${2:Var};
});$0'
	end
	snippet 'on' do |s|
		s.trigger = '.on'
		s.expansion = '.on(\'${1:eventname}\', function(${2:err, res}){

});$0'
	end
	snippet 'setInterval' do |s|
		s.trigger = 'setInterval'
		s.expansion = 'setInterval(${1:callback}, ${2:delay});$0'
	end
	snippet 'clearInterval()' do |s|
		s.expansion = "clearInterval(${1:id})"
		s.trigger = 'ci'
	end
	snippet 'clearTimeout()' do |s|
		s.expansion = "clearTimeout(${1:id})"
		s.trigger = 'ct'
	end

# Helps
	snippet 'setEncoding()' do |s|
		s.expansion = ".setEncoding('${1:utf8}');"
		s.trigger = '.se'
	end
	snippet 'app' do |s|
		s.trigger = 'app'
		s.expansion = 'app.${1:get/post/put/delete/use/configure/set/engine/param/all/render/listen}(${2:path}, function(req, res, next){

});$0'
	end
	snippet 'express' do |s|
		s.trigger = 'express'
		s.expansion = 'express.${1:Model/bodyParser/cookieParser/session}();$0'
	end
	snippet 'response' do |s|
		s.trigger = 'res'
		s.expansion = 'res.${1:render/status/set/get/cookie/redirect/charset/json/type/format/attachment/sendfile/download/links/locals}(${2:Params});$0'
	end
	snippet 'filter' do |s|
		s.trigger = 'filter'
		s.expansion = 'filter(function(${1:item}){
	return ${1:item};
});$0'
	end
	snippet 'forEach' do |s|
		s.trigger = 'forEach'
		s.expansion = 'forEach(function(${1:item}, ${2:index}){

});$0'
	end
	snippet 'send' do |s|
		s.trigger = '.send'
		s.expansion = '.send(\'${1:Message}\');$0'
	end
	snippet 'console' do |s|
		s.trigger = 'console.'
		s.expansion = 'console.${1:log/error/warn/info/dir/time/timeEnd/trace/assert}(\'${2:message}\');$0'
	end
	snippet 'JSON.stringify' do |s|
		s.trigger = '.stringify'
		s.expansion = 'JSON.stringify(${1:{some:\'object\'}});$0'
	end
	snippet 'JSON.parse' do |s|
		s.trigger = '.parse'
		s.expansion = 'JSON.parse(${1:\'{\'string\':\'of json\'}});$0'
	end
	#FIXME MODEL.find(CONDITIONALS).all(function(RESULTS){...});
	#	snippet t(:modelfind) do |s|
	#		s.trigger = 'modelfind'
	#		s.expansion = '${1:Model}.find({ ${2:} }).all( function(${3:results}){
	#	${3:results}
	#});$0'
	#	end
	snippet 'exports' do |s|
		s.trigger = 'exports'
		s.expansion = 'exports.${1:Model} = ${2:function(){

}};$0'
	end
	snippet 'find' do |s|
		s.expansion = ".find('${1:selector expression}')$0"
		s.trigger = 'find'
	end

# System
	snippet 'sys.inherit()' do |s|
		s.expansion = "sys.inherits(${1:Subclass}, ${2:Superclass});"
		s.trigger = 'i'
	end
	snippet 'process.chdir()' do |s|
		s.expansion = "process.chdir('${1:directory}')"
		s.trigger = 'cd'
	end
	snippet 'process.compile()' do |s|
		s.expansion = "process.compile('${1:source}', '${2:filename}')"
		s.trigger = 'compile'
	end
	snippet 'process.cwd()' do |s|
		s.expansion = "process.cwd()"
		s.trigger = 'cwd'
	end
	snippet 'process.exit()' do |s|
		s.expansion = "process.exit(${1:1});"
		s.trigger = 'exit'
	end
	snippet 'process.kill()' do |s|
		s.expansion = "process.kill(${1:pid}, 'SIG${2:INT}')"
		s.trigger = 'kill'
	end
	snippet 'process.nextTick()' do |s|
		s.expansion = "process.nextTick(function(){
	$0
});"
		s.trigger = 'nt'
	end
	snippet 'process.setgid()' do |s|
		s.expansion = "process.setgid('${1:name string or id}')"
		s.trigger = 'sgid'
	end
	snippet 'process.setuid()' do |s|
		s.expansion = "process.setuid('${1:name string or id}')"
		s.trigger = 'suid'
	end
	snippet 'process.umask()' do |s|
		s.expansion = "process.umask($1)"
		s.trigger = 'um'
	end
	snippet 'process.version' do |s|
		s.expansion = "process.version"
		s.trigger = 'ver'
	end
	
# Documents
	snippet 'function' do |s|
		s.expansion = "/**
	@name ${1:func_name}
	@function
	@description ${2:description}
*/
	function ${1} () {
		${3:statements}
	} // End ${1}"
		s.trigger = 'func'
	end
	snippet 'method' do |s|
		s.expansion = "/**
	@name ${1:parent}.${2:method_name}
	@function
	@description ${3:description}
	*/
	${2}: function () {
		${5:statements}
	}${4:,} // End ${2}"
		s.trigger = 'method'
	end
	snippet 'module' do |s|
		s.expansion = "/**
 * @name ${1:module_name}
 * @namespace
 * @description ${2:description}
 */
	var ${1} = function () {
	// Private

	// Public

	return {
		${0}
		};

		}(); // End ${1}"

		s.trigger = 'module'
	end
		snippet 'comment' do |s|
		s.expansion = "/**
 * ${1:Description}
 *
 * @param {${2:Type}} ${3:name}
 * @return {${4:Type}}
 * @api ${5:public}
 */"
		s.trigger = 'c'
	end
	snippet 'comment block' do |s|
		s.expansion = "/**
 * ${1:Description}
 */"
		s.trigger = 'cb'
	end
	snippet 'comment file' do |s|
		s.expansion = "  /*!
 * ${1:Project Name}
 * Copyright(c) 2010 ${2:Author Name} &lt;${3:Author Email}&gt;
 * MIT Licensed
 */"
		s.trigger = 'cf'
	end
	snippet 'Comments' do |s|
		s.expansion = "/**
 * ${1}
 *
 * Receives: ${2}
 * Returns: ${3}
 */"
		s.trigger = 'cmt'
	end
	snippet '@returns' do |s|
		s.expansion = "@returns {${1:return_type}} ${2:description}"
		s.trigger = '@returns'
	end
	snippet '@param' do |s|
		s.expansion = "@param {${1:type}} ${2:name} ${3:description}	"
		s.trigger = '@param'
	end
end