# Louis's Home Page

## About 

This repo is the [Jekyll][jekyll] source to Louis Theran's 
home page template.

## License

The code and layouts are derived from Jekyll, and inherit that
license.  

[jekyll]: http://jekyllrb.com/

## Documentation

At the moment, this is somewhat modular, except for the home page at 
`index.html` and the CV and `CV.html` which contain some free text 
inside the Liquid templates.

Below is a quick guide to some of the features.

### Papers

These are part of the collection `_papers`.  A typical journal article 
frontmatter looks like this:

~~~~~~~~~~~~~~
---
layout: paper
type: journal
arxiv: 1008.1837
doi: 10.1016/j.aim.2012.10.007
journal: advances
authors:
    - justin
    - louis
title: Generic combinatorial rigidity of periodic frameworks
year: 2013
volume: 233
issue: 1
pages: 291–331
---
~~~~~~~~~~~~~~

The body is the abstract.  
See this site for conferernce and preprint examples.  Authors conferences and journals 
are listed in `_data/authors.yml`, `_data/conferences.yml`, and `_data/journals.yml`.
This is enough to automatically generate your bibliography.

### CV

See `CV.html` for a semi-automated CV generator, that should be somewhat updatable.

### Styling

This is derived pretty closely from the Jekyll default.  I've tried to make 
things even a little more modular, but I only noticed how SCSS mixins work
recently, so more can be done.