# Website Makefile

docker-build:
	docker run --rm --name jekyll -it -v $$PWD:/srv/jekyll iandennismiller/jekyll /bin/bash -c 'JEKYLL_ENV=production bundle exec jekyll build --incremental'

docker-clean:
	docker run --rm --name jekyll -it -v $$PWD:/srv/jekyll iandennismiller/jekyll /bin/bash -c 'bundle exec jekyll clean'

requirements:
	chmod 755 _bin/*
	_bin/requirements.sh

data-develop:
	rm -rf ./data ./_data
	cp -r _sets/develop/data ./data
	cp -r _sets/develop/_data ./_data
	echo OK

store-data-develop:
	rm -rf ./_sets/develop/data ./_sets/develop/_data
	cp -r data _data _sets/develop

data-production:
	rm -rf ./data ./_data
	cp -r _sets/production/data ./data
	cp -r _sets/production/_data ./_data
	echo OK

store-data-production:
	rm -rf ./_sets/production/data ./_sets/production/_data
	cp -r data _data ./_sets/production

new:
	_bin/template.py

serve:
	bundle exec jekyll serve

publish: clean build
	rsync -avD _site/ docs/
	git add -A
	git commit -am "automatic publish"
	git push

artwork:
	_bin/artwork.sh

install:
	rsync -acv --delete _site/ ~/www/

clean:
	bundle exec jekyll clean

incremental: clean
	bundle exec jekyll serve --incremental

build:
	JEKYLL_ENV=production bundle exec jekyll build

production:
	JEKYLL_ENV=production bundle exec jekyll serve

js:
	java -jar ~/Library/Code/compiler.jar --js _site/js/main.js --js_output_file js/main.min.js

prerendered:
	echo DISABLED right now
	# wget http://localhost:4000/blank.html -O _layouts/page-nosocial-rendered.html
	# sed -e 's/CONTENT/{{ content }}/' _layouts/page-nosocial-rendered.html > _layouts/page-nosocial-rendered.tmp
	# mv _layouts/page-nosocial-rendered.tmp _layouts/page-nosocial-rendered.html

.PHONY: artwork depends new js publish serve incremental build production install all git-init git-hooks
