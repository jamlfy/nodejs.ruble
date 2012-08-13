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

	snippet 'addListener' do |s|
		s.trigger = 'addListener'
		s.expansion = 'addListener(\'${1:event}\', function(${2:Var}){
	${2:Var};
});$0'
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

	snippet 'process.env' do |s|
		s.trigger = 'process.env'
		s.expansion = 'process.env.${1:VARIABLE};$0'
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

	snippet 'on' do |s|
		s.trigger = '.on'
		s.expansion = '.on(\'${1:eventname}\', function(${2:err, res}){
	
});$0'
	end

	snippet 'send' do |s|
		s.trigger = '.send'
		s.expansion = '.send(\'${1:Message}\');$0'
	end

	snippet 'setInterval' do |s|
		s.trigger = 'setInterval'
		s.expansion = 'setInterval(${1:callback}, ${2:delay});$0'
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

	snippet 'readFile' do |s|
		s.trigger = '.readFile'
		s.expansion = 'fs.readFile(\'${1:filename}\', function(err, ${2:data}){
	${2:data}
});$0'
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
end