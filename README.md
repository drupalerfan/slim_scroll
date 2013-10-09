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
```
## Usage
Slim scroll provide various option to for user , here are some condition by which you can user slim scroller

1. Height / Width options

```rhtml
$('#conterner_id').slimscroll({
  height: '100px',
  width: '300px'
});

```
2. Scrollbar options
  I.for scroller size

```rhtml
$('#conterner_id').slimscroll({
    size: '15px'
  });
  

```
II. for scroller position 

```rhtml
$('#conterner_id').slimscroll({
    position: 'left'
  });
  

```
III. for scroll colore
```rhtml
$('#conterner_id').slimscroll({
    color: '#00f'
  });
  

```
IV. Visiblity option if you want it should be visioble always

```rhtml
$('#conterner_id').slimscroll({
   alwaysVisible: true
  });
  

```
V. distance option from certain position 

```rhtml
$('#conterner_id').slimscroll({
   alwaysVisible: true
  });
  

```
## Development & Feedback

Questions or comments? Please use the [issue tracker](https://github.com/ciserfan/slim_scroll/issues). Tests can be run with `bundle` and `rake` commands.
