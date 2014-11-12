---
layout: post
author: Louis Theran
date: 2014-11-12 15:21:29 +0200
title: How to make a site like this one
---

This site is generated with [Jekyll][jek], which is "blog aware".  I guess
that means I should have a blog here.  In keeping with the tradition of 
DIY technology projects, I'm going to start by using it to write about 
itself, mostly so that I don't forget what I did.

[jek]: http://jekyllrb.com/

# Who is this for?

Besides me, that is.  If you follow these instructions, you'll end 
up with a site that:

* Is under source control with [git][git]
* Is made of static files, delivered by a [CDN][fastly] that should provide good speed and uptime 
* Has repetitive parts generated from [structured text files][yaml] by templates
* Does not require and databases or servers
* Is free, unless you want your own [second-level domain name][dn]
* Configuration is minimal with no manual upgrades on the [server-side][ghpages] required

This comes at some cost in flexibility:

* Everything on the site is public
* TLS isn't supported 
* You don't have CGI, SQL, [shellshock][ss], etc. support 

The bottom line is that these instructions are for publishing 
public documents, not programming or doing the kinds of fine-gained 
setups that you'd want a [CMS][cms] for.

[git]: http://github.com/
[fastly]: http://fastly.com/
[yaml]: http://yaml.org/
[dn]: https://en.wikipedia.org/wiki/Second-level_domain
[ghpages]: http://pages.github.com/
[ss]: https://shellshocker.net/
[cms]: https://en.wikipedia.org/wiki/Content_management_system

# What's covered?

We're going to go through the steps to get the site's skeleton up and running in a 
way you can edit it.  The steps are serialized into an order that works.

We're not going to cover things like [HTML][html] and [CSS][css]
for formatting the site or give a detailed [introduction to git][gitbc].
We're also not going to cover Windows.  I don't have a Windows computer.  

[html]: https://html.spec.whatwg.org/multipage/
[css]: http://www.w3.org/Style/CSS/
[gitbc]: https://help.github.com/categories/bootcamp/

# 1. Install Jekyll

The tool used to actually generate the site is [Jekyll][jek].  This 
is itself a wrapper around some useful utilities.  Installing it 
is very easy:

~~~~~
$ gem install jekyll
~~~~~


# 2. Get set up with GitHub

Next you'll want a [GitHub][git] account.  If you don't have one,
go make one now.

Once you've done that, download the [GitHub app][ghapp] for Mac.
Open it and log in with your github username.

If you are using Linux, skip this step and then use the command
line where I say to use the app below.

[ghapp]: http://mac.github.com/


# 3. Create a minimal site

# 4. The publishing workflow

# 5. Get a domain name

# 6. Get better DNS hosting