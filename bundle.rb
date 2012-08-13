require 'ruble'

bundle do |bundle|
	bundle.display_name = t(:bundle_name)
	bundle.author = 'AlejoNext'
	bundle.copyright = 'Distributed under the MIT license.'
	bundle.repository = 'git://githubundle.com/alejonext/nodejs.ruble.git'
	bundle.description = <<END
	<a href="http://nodejs.org/">Node.JS</a> is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications.
	Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.
END
	bundle.menu t(:bundle_name) do |node_menu|
		node_menu.scope = [ 'source.js' ]
		node_menu.command 'require'
		node_menu.command 'addListener'
		node_menu.command 'app'
		node_menu.command t(:comments) do |submenu|
			submenu.command 'function'
			submenu.command 'comment'
			submenu.command 'comment block'
			submenu.command '@returns'
			submenu.command '@param'
		end
		
	end
end

  # forEach: 'ForEach'
  # on_create: 'CreateEvent'
  # render: 'Render'
  # setInterval: 'Setinterval'
  # console: 'Console'
  # readFile: 'Readfile'
  # modelfind: 'FindModel'
  # exports: 'Exports'
  # appexpress: 'AppExpress'
  # filter_js: 'filter'
  # process_env: 'Process Env'
  # requires: 'Require'
  # addList:'addListener'