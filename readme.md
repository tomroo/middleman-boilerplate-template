# Template for Middleman

This is a small bootstrap for quick web projects. This boilerplate includes;

- [Twitter Bootstrap][1] 3.3.4
- [Font Awesome][2] 4.3.0
- [jQuery][3] 1.11.2
- RetinaJS 0.0.2 (fixed by me - allowed CORS)

## Usage

Clone this repo under `~/.middleman/`

    mkdir ~/.middleman # if you don't have
    cd ~/.middleman
    git clone https://github.com/webBoxio/middleman-boilerplate-template.git webbox

Than go to your working space for new middleman app and;

    cd ~/Desktop/
    middleman init my_new_website --template=webbox
    cd my_new_website/
    rm -rf .git/ readme.md # remove current git info
    git init               # crate your own git
    bundle install --path vendor/bundle # using Ruby 2.1.0
    rake # runs development server.

If you customize `config.rb` and uncomment `deploy` related parts
you can use:

    rake deploy

for building and deploying static site to remote server via **rsync**.


## Change Log

**2015-05-20**

* `layout.html.erb` changed.
* Google Analytics include works only under **production environment**.
* `<body>` tag now contains `class="<%= page_classes %>"`
* `locale` support, default locale is **Turkish** (`config.rb`) now!
* **Active Support** enabled!

**2015-03-31**

* **https** cdn links for bootstrap + fontawesome
* `middleman` ~>3.3.8
* `ruby` 2.2.0
* `bootstrap` 3.3.4
* `jquery` 1.11.2
* `fontawesome` 4.3.0




[1]: http://getbootstrap.com/
[2]: http://fontawesome.io
[3]: http://jquery.com/download/
