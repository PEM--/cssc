## Description
This [Meteor](https://www.meteor.com/) provides an easy way to create your stylesheets in [CoffeeScript](http://coffeescript.org/).

## Installation
```bash
meteor add pierreeric:cssc
```

## Basic usage
The following example creates a new stylesheet with a single rule on a CSS
class `.bubble`:

```coffee
mainCss = new CSSC

mainCss.add '.bubble',
  backgroundColor: '#FFDC00'
  borderRadius: CSSC.x 8
```
