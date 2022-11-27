# CoV Index

https://iandennismiller.github.io/covid-web/

CoV Index is the map of Coronavirus Science.

**CoV Index** applies network analysis, bibliometrics, computer-human interaction, and computational linguistics methods to identify communities of Coronavirus research.

## Contact

[Dr. Ian Dennis Miller](https://twitter.com/iandennismiller) is a postdoctoral fellow at the [University of Toronto](http://imiller.utsc.utoronto.ca).

## Development

This is built locally with Jekyll, then deployed to github.

How to build:

```{bash}
docker run --rm --name jekyll -it -v $PWD:/srv/jekyll iandennismiller/jekyll /bin/bash -c 'JEKYLL_ENV=production bundle exec jekyll build --incremental'
```

How to deploy via github pages:

```{bash}
rsync --checksum -avD _site/ docs/
git add -A && git commit -am "automatic publish" && git push
```
