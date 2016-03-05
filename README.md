# DenshobatoChatPanel

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'denshobato_chat_panel'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install denshobato_chat_panel

## Usage

### Install Chat

```shell
rails g denshobato_chat_panel:install
```

This command copies assets to vendor/public/assets

#####1. Copy this line to your `config/initializers/assets.rb`
```ruby
 Rails.application.config.assets.precompile += %w( denshobato.js )
```
#####2. In your application.scss import css
```scss
 @import 'denshobato';
```

#####3.  In `layouts/application.erb` include javascript file in the bottom

```erb
<body>
  <div class='container'>
    <%= render 'layouts/header' %>
    <%= yield %>
  </div>

<%= javascript_include_tag 'denshobato' %>
</body>
```
#####4. Mount API route in your routes.rb
```ruby
 mount Denshobato::DenshobatoApi => '/'
```

#####5. On the page with your conversation, e.g  `localhost:3000/conversation/32`, add this helper with arguments
```slim
= render_denshobato_messages(@conversation, current_user)
// =>  When @conversation = Denshobato::Conversation.find(params[:id])
// => and current_user is your signed in user, e.g Devise current_user etc.
```

### A few methods for Chat Panel

You need to set up name and image for chat independently.
By default, name show a class name of model, e.g Customer, or User, and a gravatar.

Go to your user model and rewrite these methods.

```ruby
class User
  denshobato_for :user

  def full_name
    "#{self.first_name}, #{self.last_name}"
  end

  def image
    self.avatar.url
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ID25/denshobato_chat_panel.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
