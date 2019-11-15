---
layout: post
title: First Post – Setting Up GitHub Pages
date: 2017-11-03
description: Making the first post
img: jekyll-github.jpg
tags: [productivity, software]
---

I've finally come around to getting this going with motivation from [CJ](http://jekel.me). It's pretty cool how smoothly the setup process can be (though there's always a few hiccups as with anything). Nowadays much of the back-end stuff is taken care of as a black-box. Even though I didn't have others help, I wouldn't consider this "building" my own website. This blog post is just a markdown file that will get converted to HTML by [kramdown](https://kramdown.gettalong.org)/[Jekyll](https://jekyllrb.com). Not going into any details here, as others have already said enough.

I found [this theme](https://github.com/artemsheludko/flexible-jekyll) through a quick google search and stuck with it for the minimalist design.

Here's the catch... earlier this year, I had tried to get GitHub Pages running with the built-in version of ruby on macOS. Bad idea. I must have ran `sudo gem install jekyll bundle` so running `jekyll serve` works fine on my machine, but `gem install` was not behaving correctly without root permissions.

Detecting that I had the wrong ruby version:

{% highlight shell %}
$ which ruby
/usr/bin/ruby
$ ruby -v
ruby 2.0.0p648 (2015-12-16 revision 53162) [universal.x86_64-darwin15]
{% endhighlight %}

GitHub Pages requires ruby >=2.1.0.
Attempting to install via Homebrew following [this guide](http://usabilityetc.com/articles/ruby-on-mac-os-x-with-rvm/):

{% highlight shell %}
$ brew install gnupg
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
gpg: directory '/Users/Victor/.gnupg' created
gpg: keybox '/Users/Victor/.gnupg/pubring.kbx' created
gpg: keyserver receive failed: No route to host
{% endhighlight %}

This error is easily fixed by following the direction on [RVM install page](https://rvm.io/rvm/install).

{% highlight shell %}
$ gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
{% endhighlight %}

Install RVM:

{% highlight shell %}
$ curl -sSL https://get.rvm.io | bash -s stable --ruby
$ source ~/.rvm/scripts/rvm
$ which rvm
/Users/Victor/.rvm/bin/rvm
{% endhighlight %}

Looks like the correct ruby is installed and being used. Also be sure to add that final `source` command to your respective `.bash_profile`. Check ruby version:

{% highlight shell %}
$ ruby -v
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin15]
{% endhighlight %}

Looks good! Install necessary gems:

{% highlight shell %}
$ gem install jekyll bundler
{% endhighlight %}

Add a `Gemfile` to install required gems for the blog:

{% highlight shell %}
source 'https://rubygems.org'
gem 'github-pages'
gem 'jekyll-paginate'
{% endhighlight %}

Finish the install using `bundle install`. Run `jekyll serve` to preview and navigate the entire site on a local machine. `git commit`, `git push`, and we're here!
