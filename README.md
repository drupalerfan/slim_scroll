# RailsChat
Refrence gem: [Private pub](https://github.com/ryanb/private_pub)

slim_scroll is a small jQuery plugin gem that transforms any div into a scrollable area with a nice scrollbar - similar to the one Facebook and Google started using in their products recently. slim_scroll doesn't occupy any visual space as it only appears on a user initiated mouse-over. User can drag the scrollbar or use mouse-wheel to change the scroll value..

## Setup

Add the gem to your Gemfile and run the `bundle` command to install it.

```ruby
gem "slim_scroll"
```

Run the generator to create the initial files.

```
rails g slim_scroll:install
```
**In Rails 3.1** add the JavaScript file to your application.js file manifest. 

```javascript
//= require slim_scroll
```


**In Rails 3.0** add the generated slim_scroll file to your layout.

```rhtml
<%= javascript_include_tag "slim_scroll" %>
## Usage
Slim scroll provide various option to for user 
```rhtml
<%= subscribe_to "/messages/new" %>
```
Use the `publish_to` helper method to send JavaScript to that channel. This is usually done in a JavaScript AJAX template (such as a create.js.erb file).

```rhtml
<% publish_to "/messages/new" do %>
  $("#chat").append("<%= j render(@messages) %>");
<% end %>
```

This JavaScript will be immediately evaluated on all clients who have subscribed to that channel. In this example they will see the new chat message appear in real-time without reloading the browser.

## Development & Feedback

Questions or comments? Please use the [issue tracker](https://github.com/ciserfan/slim_scroll/issues). Tests can be run with `bundle` and `rake` commands.
