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
		node_menu.command t(:requires)
		node_menu.command t(:addListener)
		#FIXME node_menu.command t(:app)
		node_menu.command t(:evn)
		node_menu.command t(:modelfind)
	end
end

