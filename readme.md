# Template for Middleman

This is a small bootstrap for quick web projects. This boilerplate includes;

- [Twitter Bootstrap][1] 3.3.5
- [Font Awesome][2] 4.4.0
- [jQuery][3] 1.11.3
- [html5shiv][4] 3.7.2
- [Respond][5] 1.4.2
- RetinaJS 0.0.2 (fixed by me - allowed CORS)

You need `Ruby 2.2.2`.

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
    bundle install --path vendor/bundle # using Ruby 2.2.2
    rake # runs development server.

If you customize `config.rb` and uncomment `deploy` related parts
you can use:

    rake deploy

for building and deploying static site to remote server via **rsync**.

## Serve Realtime!

Now, you can run your middleman app as a real server! Test it via

```bash
rake production
# open http://127.0.0.1:9292 now
```

Thanx to [Sebastian Gräßl](https://github.com/bastilian) for **Rackup** tip!
You can deploy your application to [Heroku](http://heroku.com) :)

```bash
heroku create my-awesome-middleman-app
git push heroku master
```

Check out the [site](https://middleman-live-server.herokuapp.com/)!

## Change Log

**2015-09-19**

* Fontawesome 4.4.0
* URL’s fixed for SSL/non-SSL usage

**2015-06-29**

* 3rd party libs updated...
* Now using Ruby 2.2.2

**2015-05-21**

* Syntax highlighting added
* Color scheme added for syntax highlighting
* Redcarpet added as Markdown renderer
* Active Support gem integrated
* libs/ folder deleted
* custom helpers moved to `helper/` folder under `custom_helpers.rb` file
* **i18n** locale dictionary files added for **Turkish** and **English**
* Distance measurement vocabulary added for `tr.yml`
* Default index page now shows the template helper examples.
* `config.ru` file added for run-time serving and deployment!
* `ruby 2.2.0` for Gemfile + rbenv.
* `Procfile` added for Heroku

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
[4]: https://github.com/afarkas/html5shiv
[5]: https://github.com/scottjehl/Respond