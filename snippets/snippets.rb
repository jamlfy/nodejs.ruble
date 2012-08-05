snippet 'dirname' do |s|
	s.trigger = 'dir'
	s.expansion = '__dirname'
end

snippet t(:require) do |s|
	s.trigger = 'req'
	s.expansion = 'var $1 = require(\'${1:sys}\')'
end

snippet t(:addListener) do |s|
	s.trigger = 'addL'
	s.expansion = 'addListener(\'${1:event}\', function(${2:}){
  ${3:}
});'
end

snippet t(:app) do |s|
	s.trigger = 'app'
	s.expansion = 'app.${1:method}(\'${2:path}\', function(req, res, next){
    ${3:}
});'
end

snippet t(:env) do |s|
	s.trigger = '.env'
	s.expansion = 'process.env.${1:VARIABLE}'
end

snippet t(:filter) do |s|
	s.trigger = 'fil'
	s.expansion = 'filter(function(item){
  return ${1:false};
});'
end

snippet t(:forEach) do |s|
	s.trigger = 'forE'
	s.expansion = 'forEach(function(${1:item},${2:index}){
   ${3:}
});'
end

snippet t(:on) do |s|
	s.trigger = '.on'
	s.expansion = '.on(\'${1:eventname}\', function(${2:err, res}){
  ${3:}
});'
end

snippet t(:render) do |s|
	s.trigger = '.ren'
	s.expansion = '.render(\'${1:template}\', {
  locals:{
    ${2:templatevars}
  }
});'
end

snippet t(:setInterval) do |s|
	s.trigger = 'setI'
	s.expansion = 'setInterval(${1:callback}, ${2:delay})'
end

snippet t(:console) do |s|
	s.trigger = 'con'
	s.expansion = 'console.${1:sintax}(\'${2:message}\');'
end

snippet 'JSON.stringify' do |s|
	s.trigger = 'JSON.s'
	s.expansion = 'JSON.stringify(${1:{some:\'object\'}});'
end

snippet 'JSON.parse' do |s|
	s.trigger = 'JSON.p'
	s.expansion = 'JSON.parse(${1:\'{\'string\':\'of json\'}});'
end

snippet t(:readFile) do |s|
	s.trigger = 'fs.r'
	s.expansion = 'fs.readFile(\'${1:filename}\', function(err, data){
  ${2: }
});'
end

snippet t(:modelfind) do |s|
	s.trigger = 'modelfind'
	s.expansion = '${1:Model}.find({ ${2:} }).all(function(${3:results}){
    ${4:}
});'
end

snippet t(:exports) do |s|
	s.trigger = 'exp'
	s.expansion = 'exports.${1:Model} = '
end
