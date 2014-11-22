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

In the app, select "New Repository" from the file menu.  The name of the 
new repository should be 

~~~~~
username.github.io
~~~~~

where `username` is your GitHub account.  Pick someplace to put the files, 
which we'll call `REPO`.  For now, don't put anything there.  Now 
open up a terminal and do

~~~~~
$ cd REPO
$ git pull https://github.com/theran/theran.github.io.git template 
~~~~~

Keep this terminal open and in the same directory.
Now edit `_config.yml` to include your name and the associated information.  
Then, in the command line again do

~~~~~~
$ jekyll serve
~~~~~~

You should see an empty site at <http://localhost:4000/>.  This is where you'll 
test new edits out.  To get going you will want to:

* Edit `contact.md` to have your contact information.
* Edit `bio.md` to have your brief bio
* Put a picture of yourself in `assets/images` 
* Edit `_includes/picture.html` to point at the picture you added and show your address
* Edit `CV.html` to have your actual data
* Put your papers into `_papers/`.  (For the moment, just see <https://github.com/theran/theran.github.io/tree/master/_papers> for the format. Don't forget to add journals, conferences, and coauthors in `_data/`)

As you edit, Jekyll will keep rebuilding, so you can see how it looks at <http://localhost:4000/>.

# 4. The publishing workflow

Once you are happy with what you have, go back to the GitHub app.  Click "Commit" and 
then "Sync" (at the top right).  Wait a minute, and you'll have a web site at 
<http://username.github.io/>.

From now on, the editing and publishing cycle is:

* Start Jekyll with `jekyll serve`
* Edit or add files, testing in your browsers at <http://localhost:4000/>
* When you are ready to publish, just do commit in the GitHub app and then Sync

# 5. Get a domain name

These next two steps are optional.  If you want your own domain name and don't have 
one, first you have to buy it.  I recommend to do this with <http://iwantmyname.com>.

Next you need to tell GitHub about your domain name.  To do this, on the command line 
run

~~~~~
$ cd REPO
$ echo yourdomain.example > CNAME
~~~~~

Then commit and sync the new file.

# 6. Get better DNS hosting

If you did already have a domain and aren't using it for email 
go on.  __Otherwise, you should stop here and add records to your
existing zone.__  (I don't know your configuration, so I won't be
too helpful.)

Next, you'll need to set up your new domain to point at GitHub.  For 
rather opaque reasons, a lot of DNS providers will give quite poor
performance.  To get around this, you'll need an account at 
[CloudFlare][cloudflare].  Go get one. Pick free and take 
the default options.

Once you've got the CloudFlare account, it will ask you to 
add a web site.  Type in `yourdomain.example`.  It will 
import any DNS records you have for your zone.  Delete all 
of these.

Now in the CloudFlare control panel add a `CNAME` record 
for `@` to point to `username.github.io`.  If you 
want, also add a `CNAME` record for `www` to also
point to `username.github.io`. For both of these records 
click the orange cloud to make it "off CloudFlare".  It will 
turn gray. (GitHub is giving you similar features already.)

Finally, look to the right side of the CloudFlare panel 
above.  It lists two name servers.  Go back to your 
DNS registrar's control panel (e.g., at <http://iwantmyname.com>)
and paste these into the "set name servers" field, 
deleting any other name servers.

Wait until everything updates at DNS World HQ, and then 
your new URL <http://yourdomain.example/> will
point to your new site.

[cloudflare]: https://www.cloudflare.com