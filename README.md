# Tastes Bitter

Get an email notification when a JavaScript error occurs in your Rails application.

## Install

Add the gem to your `Gemfile`.

```ruby
gem 'tastes_bitter', github: 'matharvard/tastes_bitter'
```

Use Bundler to install it.

```sh
$ bundle install
```

Run the install generator.

```sh
$ bundle exec rails generate tastes_bitter:install
```

## Configure

Open `config/initializers/tastes_bitter.rb` and update the configuration.

```ruby
TastesBitter.configure do |config|

  config.mailer_receiver = "notifications@example.com"
  config.mailer_sender = "notifications@example.com"
  config.mailer_subject_prefix = "[JavaScript Error] "

end
```

Make sure you have [ActionMailer configured](http://api.rubyonrails.org/classes/ActionMailer/Base.html) in order for emails to be sent.

Add the JavaScript file to `application.js`.

```coffeescript
//= require tastes_bitter/javascript_errors
```

It **does** matter where you include the JavaScript. It will only catch errors that occur *after* it has been loaded into the page. In general, you'll want to include it around the top of `application.js`. This will ensure it catches all errors from any other JavaScript code in your application.

## How it works

The JavaScript hooks into the `window.onerror` event by sending an XHR with the error data which is then emailed.
