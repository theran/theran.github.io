# Louis's Home Page

## About 

This repo is the [Jekyll][jekyll] source to Louis Theran's 
home page, which is hosted at <http://theran.lt>.

## License

The code and layouts are derived from Jekyll, and inherit that
license.  There is a [template branch][lttemp] that 
you should fork if you want to make a similar 
site.  There are some [directions][quickstart] for how to 
do that.

All the actual site content is copyright Louis Theran and 
may not be used except at the site <http://theran.lt/>.

The stylesheet here uses the font [Atlas Grotesk][atlas].  This
is licensed only for <http://theran.lt/>.  You need to buy your own 
license if you want to use it.  The [template version][lttemp] of this 
site has a stylesheet without the fonts.

[jekyll]: http://jekyllrb.com/
[atlas]: https://commercialtype.com/typefaces/atlas/grotesk
[lttemp]: https://github.com/theran/theran.github.io/tree/template
[quickstart]: http://theran.lt/2014/11/12/about-this-site.html

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