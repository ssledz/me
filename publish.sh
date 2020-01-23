#!/bin/bash
jekyll clean
jekyll build
cd _site
git init
gco -b gh-pages
git add -A
git commit -m 'pages'
git remote add origin git@github.com:ssledz/me.git
git fetch
git push --force origin gh-pages
