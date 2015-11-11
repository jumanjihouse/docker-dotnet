# vim: set ts=2 sw=2 noet:
all: build test

build:
	dnu restore

.PHONY: test
test: build
	dnx run | grep 'Hello World from Core CLR!'

clean:
	rm -f project.lock.json
	dnu clear-http-cache
