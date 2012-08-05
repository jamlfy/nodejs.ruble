with_defaults :scope => 'source.js' do

snippet 'dirname' do |s|
	s.trigger = 'dir'
	s.expansion = '__dirname'
end

snippet t(:require) do |s|
	s.trigger = 'req'
	s.expansion = 'var $1 = require(\'${1:sys}\');$0'
end

snippet t(:script) do |s|
	s.trigger = '!node'
	s.expansion = '#!/usr/bin/env node'
end

snippet t(:addListener) do |s|
	s.trigger = 'addL'
	s.expansion = 'addListener(\'${1:event}\', function(${2:Var}){
	${2:Var}
});$0'
end

snippet t(:app) do |s|
	s.trigger = 'app'
	s.expansion = 'app.${1:method}(\'${2:path}\', function(req, res, next){
	
});$0'
end

snippet t(:env) do |s|
	s.trigger = '.env'
	s.expansion = 'process.env.${1:VARIABLE}$0'
end

snippet t(:filter) do |s|
	s.trigger = 'fil'
	s.expansion = 'filter(function(item){
	return ${1:false};
});$0'
end

snippet t(:forEach) do |s|
	s.trigger = 'forE'
	s.expansion = 'forEach(function(${1:item},${2:index}){
	
});$0'
end

snippet t(:on) do |s|
	s.trigger = '.on'
	s.expansion = '.on(\'${1:eventname}\', function(${2:err, res}){
	
});$0'
end

snippet t(:render) do |s|
	s.trigger = '.ren'
	s.expansion = '.render(\'${1:template}\', {
	locals:{
		${2:template Vars}
	}
});$0'
end

snippet t(:setInterval) do |s|
	s.trigger = 'setI'
	s.expansion = 'setInterval(${1:callback}, ${2:delay});$0'
end

snippet t(:console) do |s|
	s.trigger = 'con'
	s.expansion = 'console.${1:sintax}(\'${2:message}\');$0'
end

snippet 'JSON.stringify' do |s|
	s.trigger = 'JSON.s'
	s.expansion = 'JSON.stringify(${1:{some:\'object\'}});$0'
end

snippet 'JSON.parse' do |s|
	s.trigger = 'JSON.p'
	s.expansion = 'JSON.parse(${1:\'{\'string\':\'of json\'}});$0'
end

snippet t(:readFile) do |s|
	s.trigger = 'fs.r'
	s.expansion = 'fs.readFile(\'${1:filename}\', function(err, ${2:data}){
	${2:data}
});$0'
end

snippet t(:modelfind) do |s|
	s.trigger = 'modelfind'
	s.expansion = '${1:Model}.find({ ${2:} }).all( function(${3:results}){
	${3:results}
});$0'
end

snippet t(:exports) do |s|
	s.trigger = 'exp'
	s.expansion = 'exports.${1:Model} = ${2:Var/function(){ \n\t };/};$0'
end
end