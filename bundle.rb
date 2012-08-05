require 'ruble'

bundle do |bundle|
	bundle.display_name = t(:bundle_name)
	bundle.author = 'Alejandro Next'
	bundle.copyright = 'GLP v2'
	bundle.repository = 'git://githubundle.com/alejonext/nodejs.ruble.git'
	bundle.description = <<END
<a href="http://jade-lang.com/">Jade</a>is a high performance template engine heavily influenced by HAML and implemented with JavaScript for node.
END
	bundle.menu t(:bundle_name) do |node|
		node.command t(:require)
		node.command t(:addListener)
		node.command t(:app)
		node.command t(:evn)
		node.command t(:modelfind)
	end
end
