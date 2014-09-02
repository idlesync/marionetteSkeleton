install:
	npm install && ./node_modules/.bin/bower install --config.interactive=false --allow-root

clean:
	rm -rf node_modules
	rm -rf bower_components
	rm -rf public/*

watcher:
	./node_modules/.bin/grunt watcher --force

unit:
	./node_modules/.bin/grunt test:unit

server:
	npm install
	./node_modules/.bin/grunt watcher --force
