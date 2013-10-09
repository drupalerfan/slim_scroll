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

 Height / Width options

```rhtml
$('#conterner_id').slimscroll({
  height: '100px',
  width: '300px'
});

```
for scroller size

```rhtml
$('#conterner_id').slimscroll({
    size: '15px'
  });
  

```
 for scroller position 

```rhtml
$('#conterner_id').slimscroll({
    position: 'left'
  });
  

```
 for scroll colore
```rhtml
$('#conterner_id').slimscroll({
    color: '#00f'
  });
  

```
 Visiblity option if you want it should be visioble always

```rhtml
$('#conterner_id').slimscroll({
   alwaysVisible: true
  });
  

```
 distance option from certain position 

```rhtml
$('#conterner_id').slimscroll({
    distance: '20px',
    opacity: 1
  });
  

```

Rail options
```rhtml
visiblity

$('#conterner_id').slimscroll({
    alwaysVisible: true,
    railVisible: true
  });
  
colore

  $('#conterner_id').slimscroll({
     railVisible: true,
     railColor: '#f00'
  });
  
  Opecity 
  
    $('#conterner_id').slimscroll({
     railVisible: true,
      railOpacity: 0.8
  });
  
  border option
  
    $('#conterner_id').slimscroll({
     railVisible: true,
    railBorderRadius: 0
 
  });
  
  Drag option
   $('#conterner_id').slimscroll({
    railDraggable: false
   });
  

```

start position

```rhtml
$('#conterner_id').slimscroll({
     start: 'bottom'
  });
  
  $('#conterner_id').slimscroll({
      start: $('.helloDiv')
  });
  
```

 Chaining

```rhtml
$('#conterner_id').slimscroll({
     height: '250px'
}).parent().css({
  background: '#237FAD',
  border: '2px dashed #184055'
  });
  
 
  
```
 Mulitple bindings

```rhtml
 $('.area').slimscroll({
    width: '200px'
  }).parent().css({
    'float': 'left',
    'margin-right': '30px'
  });
```
scroll by certain option 

```rhtml
 $('#testDiv').slimScroll({ scrollBy: '50px' });
```
bind any event with scroll 

```rhtml
$('#testDiv').slimscroll({
    alwaysVisible: true
  }).bind('slimscroll', function(e, pos) {
    $('#testDivOut').append("Reached " + pos + ", ");
  });
  
```
allowPageScroll option

```rhtml
$('#testDiv').slimscroll({
    allowPageScroll: true
  
```
disableFadeOut option

```rhtml
$('#testDiv2').slimscroll({
  disableFadeOut: true
});

```

wheelStep option

```rhtml
$('#testDiv2').slimscroll({
 wheelStep: 20
});

```

## Development & Feedback

Questions or comments? Please use the [issue tracker](https://github.com/ciserfan/slim_scroll/issues). Tests can be run with `bundle` and `rake` commands.
