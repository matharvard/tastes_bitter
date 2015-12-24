# Tastes Bitter

Get an email notification when a JavaScript error occurs in your Rails application.

## Install

Add the gem to your `Gemfile`.

```ruby
gem 'tastes_bitter'
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
  config.mailer_subject = "JavaScript Error"

end
```

## Use
