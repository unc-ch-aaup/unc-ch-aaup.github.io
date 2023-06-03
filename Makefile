.PHONY: clean install build serve publish post

clean:
	rm -rf site node_modules

install:
	npm install

build: install
	node ./scripts/build

serve: build
	npx serve -l 54321 ./site

publish: build
	./scripts/publish

post:
	./scripts/post
